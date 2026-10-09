#!/usr/bin/env python3
"""LeetCode problem scaffolding for the Algorithm repository.

Replaces the retired n8n "LeetCode Translator Bot" workflow with a local,
dependency-free script. Unit tests are written in the LLM conversation by the
`leetcode-add` skill, so this script never touches an API key.

    python3 Scripts/fetch_problem.py prepare  <number> [--force] [--dry-run]
    python3 Scripts/fetch_problem.py finalize <number> [--no-build] [--no-tests] [--push]

prepare   Fetch the statement from leetcode.cn, write
          Sources/LeetCodeSolutions/Problems/P{ID4}_{Title}/P{ID4}_Solution1.swift
          and .../README.html, then print a JSON state document on stdout.
finalize  Run the compile gate (swift build --build-tests) and create local
          commits; push only when --push is given.

Exit codes: 0 ok | 1 input/network error | 2 compile gate failed |
            3 target exists | 4 git failure
"""

import argparse
import json
import re
import subprocess
import sys
import time
import urllib.request
from pathlib import Path

CN_GRAPHQL = "https://leetcode.cn/graphql"
COM_GRAPHQL = "https://leetcode.com/graphql"
CN_PROBLEM_LIST = "https://leetcode.cn/api/problems/all/"
USER_AGENT = "PostmanRuntime/7.49.0"

QUESTION_QUERY = (
    "query questionData($titleSlug: String!) { question(titleSlug: $titleSlug) {"
    " questionFrontendId title titleSlug content translatedTitle translatedContent"
    " codeDefinition difficulty } }"
)
ALL_QUESTIONS_QUERY = "query allQuestions { allQuestions { questionFrontendId titleSlug } }"

EXIT_OK = 0
EXIT_INPUT = 1
EXIT_BUILD = 2
EXIT_EXISTS = 3
EXIT_GIT = 4

EMPTY_BODY_RE = re.compile(r"\{(\s*)\}")
FUNC_SIG_RE = re.compile(r"\bfunc\s+([^{]+?)\s*\{", re.S)
PLACEHOLDER = 'fatalError("TODO: implement")'


# --------------------------------------------------------------------------- io


def log(message):
    print(message, file=sys.stderr)


def die(message, code=EXIT_INPUT):
    print("ERROR: %s" % message, file=sys.stderr)
    sys.exit(code)


def run_command(root, argv):
    return subprocess.run(argv, cwd=str(root), capture_output=True, text=True)


def request_json(url, data, headers, timeout=30, retries=3):
    last_error = None
    for attempt in range(retries):
        try:
            request = urllib.request.Request(url, data=data, headers=headers)
            with urllib.request.urlopen(request, timeout=timeout) as response:
                return json.loads(response.read().decode("utf-8"))
        except Exception as exc:  # noqa: BLE001 - retry on any transport error
            last_error = exc
            if attempt < retries - 1:
                time.sleep(2 ** attempt)
    raise RuntimeError("request failed: %s (%s)" % (url, last_error))


def json_headers(referer, origin):
    return {
        "Content-Type": "application/json",
        "Referer": referer,
        "Origin": origin,
        "User-Agent": USER_AGENT,
        "Cache-Control": "no-cache",
    }


def repo_root():
    script_dir = Path(__file__).resolve().parent
    candidate = script_dir.parent
    if (candidate / "Package.swift").exists() and (candidate / "Sources" / "LeetCodeSolutions").is_dir():
        return candidate
    die("cannot locate the repository root from %s" % script_dir)


# ---------------------------------------------------------------------- leetcode


def fetch_cn_index():
    """{frontend_id: {slug, title}} from the leetcode.cn problem list."""
    headers = {"User-Agent": USER_AGENT, "Referer": "https://leetcode.cn/problemset/all/"}
    payload = request_json(CN_PROBLEM_LIST, None, headers)
    index = {}
    for item in payload.get("stat_status_pairs") or []:
        stat = item.get("stat") or {}
        frontend_id = str(stat.get("frontend_question_id") or "").strip()
        slug = stat.get("question__title_slug") or ""
        title = stat.get("question__title") or ""
        if frontend_id and slug:
            index[frontend_id] = {"slug": slug, "title": title}
    return index


def fetch_com_index():
    """Fallback index from leetcode.com (slug only)."""
    body = json.dumps(
        {"operationName": "allQuestions", "variables": {}, "query": ALL_QUESTIONS_QUERY}
    ).encode("utf-8")
    headers = json_headers("https://leetcode.com/problems/", "https://leetcode.com")
    payload = request_json(COM_GRAPHQL, body, headers)
    index = {}
    for question in (payload.get("data") or {}).get("allQuestions") or []:
        frontend_id = str(question.get("questionFrontendId") or "").strip()
        slug = question.get("titleSlug") or ""
        if frontend_id and slug:
            index[frontend_id] = {"slug": slug, "title": ""}
    return index


def resolve_problem(number):
    frontend_id = str(number)
    try:
        index = fetch_cn_index()
        if frontend_id in index:
            return index[frontend_id]["slug"], index[frontend_id]["title"]
        log("problem %s is not in the leetcode.cn index; falling back to leetcode.com" % frontend_id)
    except Exception as exc:  # noqa: BLE001 - fall back to the .com index
        log("leetcode.cn index unavailable (%s); falling back to leetcode.com" % exc)
    index = fetch_com_index()
    if frontend_id in index:
        return index[frontend_id]["slug"], index[frontend_id]["title"]
    die("cannot resolve a slug for problem %s" % frontend_id)


def fetch_question(slug):
    body = json.dumps(
        {"operationName": "questionData", "variables": {"titleSlug": slug}, "query": QUESTION_QUERY}
    ).encode("utf-8")
    headers = json_headers("https://leetcode.cn/problems/%s" % slug, "https://leetcode.cn")
    payload = request_json(CN_GRAPHQL, body, headers)
    question = (payload.get("data") or {}).get("question")
    if not question:
        die("questionData returned no question for slug %s" % slug)
    return question


# --------------------------------------------------------------------- templates


def swift_template(code_definition):
    try:
        entries = json.loads(code_definition or "[]")
    except ValueError:
        return ""
    for entry in entries:
        if (entry or {}).get("value") == "swift":
            return entry.get("defaultCode") or ""
    return ""


def inject_placeholders(code):
    """Give empty function bodies a fatalError placeholder so the file compiles."""

    def replace(match):
        gap = match.group(1)
        closing_indent = gap.rsplit("\n", 1)[1] if "\n" in gap else ""
        return "{\n%s%s\n%s}" % (closing_indent + "    ", PLACEHOLDER, closing_indent)

    return EMPTY_BODY_RE.sub(replace, code)


def build_skeleton(default_code, id4):
    code = default_code
    if "class Solution" in code:
        code = code.replace("class Solution", "final class P%s_Solution1" % id4)
    else:
        log("WARNING: the Swift template has no 'class Solution'; class name left unchanged")
    code = inject_placeholders(code)
    if EMPTY_BODY_RE.search(code):
        log("WARNING: an empty function body survived placeholder injection")
    return code.rstrip() + "\n"


def build_readme_html(question):
    frontend_id = question.get("questionFrontendId") or ""
    translated_title = question.get("translatedTitle") or question.get("title") or ""
    title = question.get("title") or ""
    translated_content = question.get("translatedContent") or ""
    content = question.get("content") or ""
    html = "<!DOCTYPE html>\n\n<h2>%s.%s</h2>\n\n%s\n\n<h2>%s.%s</h2>\n\n%s" % (
        frontend_id,
        translated_title,
        translated_content,
        frontend_id,
        title,
        content,
    )
    return html.rstrip() + "\n"


def extract_signature(code):
    for match in FUNC_SIG_RE.finditer(code):
        return "func " + " ".join(match.group(1).split())
    return ""


def sanitize_dir_name(title):
    name = " ".join((title or "").split())
    for char in "/:\\":
        name = name.replace(char, "-")
    return name.rstrip(". ").strip() or "Problem"


# ------------------------------------------------------------------------ prepare


def cmd_prepare(args):
    number = args.number
    id4 = "%04d" % number
    root = repo_root()
    problems_dir = root / "Sources" / "LeetCodeSolutions" / "Problems"
    if not problems_dir.is_dir():
        die("problems directory not found: %s" % problems_dir)

    slug, list_title = resolve_problem(number)
    log("resolved problem %s -> %s" % (number, slug))
    question = fetch_question(slug)

    title = question.get("title") or list_title or slug
    translated_title = question.get("translatedTitle") or ""
    difficulty = question.get("difficulty") or ""
    content = question.get("content") or ""

    if not content.strip() and not args.force:
        die("problem %s has no English content (premium/locked?). Re-run with --force to continue." % number)

    problem_dir = problems_dir / ("P%s_%s" % (id4, sanitize_dir_name(title)))
    solution_rel = problem_dir.relative_to(root) / ("P%s_Solution1.swift" % id4)
    readme_rel = problem_dir.relative_to(root) / "README.html"
    test_rel = Path("Tests") / "LeetCodeSolutionsTests" / ("P%s_Tests.swift" % id4)

    template = swift_template(question.get("codeDefinition") or "")
    if not template.strip():
        die("no Swift template found in codeDefinition for %s" % slug)
    skeleton = build_skeleton(template, id4)
    readme = build_readme_html(question)

    plan = {
        "number": number,
        "id4": id4,
        "slug": slug,
        "title": title,
        "translated_title": translated_title,
        "difficulty": difficulty,
        "class_name": "P%s_Solution1" % id4,
        "dir": str(problem_dir.relative_to(root)),
        "solution_file": str(solution_rel),
        "readme_file": str(readme_rel),
        "test_file": str(test_rel),
        "stub_func": extract_signature(skeleton),
        "target_exists": problem_dir.exists(),
    }

    if args.dry_run:
        plan["dry_run"] = True
        plan["skeleton_preview"] = skeleton
        print(json.dumps(plan, ensure_ascii=False, indent=2))
        return

    if problem_dir.exists() and not args.force:
        die(
            "target directory already exists: %s\nRe-run with --force to overwrite."
            % problem_dir.relative_to(root),
            EXIT_EXISTS,
        )

    problem_dir.mkdir(parents=True, exist_ok=True)
    (root / solution_rel).write_text(skeleton, encoding="utf-8")
    (root / readme_rel).write_text(readme, encoding="utf-8")
    state_path = root / ".git" / ("fetch-problem-%s.json" % id4)
    state_path.write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(plan, ensure_ascii=False, indent=2))


# ----------------------------------------------------------------------- finalize


def path_has_changes(root, path):
    result = run_command(root, ["git", "status", "--porcelain", "--", str(path)])
    return bool(result.stdout.strip())


def cmd_finalize(args):
    number = args.number
    id4 = "%04d" % number
    root = repo_root()

    state = {}
    state_path = root / ".git" / ("fetch-problem-%s.json" % id4)
    if state_path.exists():
        try:
            state = json.loads(state_path.read_text(encoding="utf-8"))
        except ValueError:
            state = {}

    problems_dir = root / "Sources" / "LeetCodeSolutions" / "Problems"
    if state.get("dir"):
        problem_dir = root / state["dir"]
    else:
        matches = sorted(problems_dir.glob("P%s_*" % id4))
        if not matches:
            die("no problem directory found for %s under %s" % (id4, problems_dir))
        problem_dir = matches[0]

    title = state.get("title") or ""
    if not title and "_" in problem_dir.name:
        title = problem_dir.name.split("_", 1)[1]

    solution_path = problem_dir / ("P%s_Solution1.swift" % id4)
    readme_path = problem_dir / "README.html"
    test_path = root / "Tests" / "LeetCodeSolutionsTests" / ("P%s_Tests.swift" % id4)

    if not solution_path.exists():
        die("solution skeleton not found: %s (run 'prepare %s' first)" % (solution_path.relative_to(root), number))

    if not args.no_build:
        log("compile gate: swift build --build-tests")
        result = run_command(root, ["swift", "build", "--build-tests"])
        if result.returncode != 0:
            tail = (result.stdout + result.stderr).strip().splitlines()[-40:]
            print("\n".join(tail), file=sys.stderr)
            die("compile gate failed; files kept and nothing committed (fix, then re-run finalize)", EXIT_BUILD)

    pending = [
        (solution_path, "%s: init swift file" % id4),
        (readme_path, "%s: %s" % (id4, title)),
    ]
    if args.no_tests:
        if test_path.exists():
            log("NOTE: --no-tests given; skipping the test commit")
    else:
        pending.append((test_path, "%s: test file" % id4))

    commits = []
    for path, message in pending:
        rel = path.relative_to(root)
        if not path.exists():
            log("NOTE: %s does not exist; skipping its commit" % rel)
            continue
        if not path_has_changes(root, rel):
            log("NOTE: %s has no changes; skipping its commit" % rel)
            continue
        add = run_command(root, ["git", "add", "--", str(rel)])
        if add.returncode != 0:
            print(add.stderr, file=sys.stderr)
            die("git add failed for %s" % rel, EXIT_GIT)
        commit_argv = ["git", "commit", "-m", message]
        if args.author:
            commit_argv += ["--author", args.author]
        commit_argv += ["--", str(rel)]
        commit = run_command(root, commit_argv)
        if commit.returncode != 0:
            print(commit.stdout, file=sys.stderr)
            print(commit.stderr, file=sys.stderr)
            die("git commit failed for %s" % rel, EXIT_GIT)
        commits.append(message)
        log("committed: %s" % message)

    pushed = False
    if args.push:
        push = run_command(root, ["git", "push", "origin", "HEAD"])
        if push.returncode != 0:
            print(push.stderr, file=sys.stderr)
            die("git push failed; the commits are still local", EXIT_GIT)
        pushed = True

    print(
        json.dumps(
            {
                "id4": id4,
                "commits": commits,
                "pushed": pushed,
                "test_file": str(test_path.relative_to(root)),
                "test_file_present": test_path.exists(),
                "note": "the solution is a skeleton; tests fail until it is implemented",
            },
            ensure_ascii=False,
            indent=2,
        )
    )


# ---------------------------------------------------------------------------- cli


def parse_args(argv):
    parser = argparse.ArgumentParser(
        prog="fetch_problem.py",
        description="Scaffold a LeetCode problem (skeleton + README) and commit it locally.",
    )
    sub = parser.add_subparsers(dest="command", required=True)

    prepare = sub.add_parser("prepare", help="fetch the problem and write skeleton + README.html")
    prepare.add_argument("number", type=int)
    prepare.add_argument("--force", action="store_true", help="overwrite an existing directory / continue on empty content")
    prepare.add_argument("--dry-run", action="store_true", help="print the plan without writing anything")
    prepare.set_defaults(func=cmd_prepare)

    finalize = sub.add_parser("finalize", help="compile gate, then local commits")
    finalize.add_argument("number", type=int)
    finalize.add_argument("--no-build", action="store_true", help="skip the swift build compile gate")
    finalize.add_argument("--no-tests", action="store_true", help="do not commit the test file")
    finalize.add_argument("--push", action="store_true", help="push to origin after committing (default: local only)")
    finalize.add_argument("--author", default="", help='override the commit author, e.g. "Name <mail@example.com>"')
    finalize.set_defaults(func=cmd_finalize)

    return parser.parse_args(argv)


def main(argv=None):
    args = parse_args(sys.argv[1:] if argv is None else argv)
    if not 1 <= args.number <= 9999:
        die("problem number must be between 1 and 9999 (got %s)" % args.number)
    args.func(args)
    return EXIT_OK


if __name__ == "__main__":
    sys.exit(main())
