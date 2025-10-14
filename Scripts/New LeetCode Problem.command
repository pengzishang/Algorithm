#!/bin/bash
# Double-clickable macOS command to run the interactive "new problem" generator.
# It will ask you to choose your project root (the folder containing Package.swift),
# ensure the script exists at Scripts/new_problem.sh, then run it.

set -euo pipefail

# 1) Ask user to choose the project root (contains Package.swift)
PROJECT_ROOT="$(/usr/bin/osascript <<'APPLESCRIPT'
set theFolder to choose folder with prompt "Select your LeetCodeSolutions project root (contains Package.swift):" default location (path to desktop)
POSIX path of theFolder
APPLESCRIPT
)"
PROJECT_ROOT="${PROJECT_ROOT%/}"

if [[ ! -f "${PROJECT_ROOT}/Package.swift" ]]; then
  echo "❌ The selected folder does not contain Package.swift:"
  echo "   ${PROJECT_ROOT}"
  exit 1
fi

cd "${PROJECT_ROOT}"

# 2) Ensure Scripts/new_problem.sh exists (if not, create it with the interactive version)
mkdir -p Scripts

SCRIPT_PATH="Scripts/new_problem.sh"
if [[ ! -f "${SCRIPT_PATH}" ]]; then
  cat > "${SCRIPT_PATH}" <<'EOS'
#!/usr/bin/env bash
# Interactive creator for a new LeetCode problem skeleton (Swift SPM project)
# Usage: bash Scripts/new_problem.sh
set -euo pipefail

# --- helpers ---------------------------------------------------------------
to_upper_camel() {
  # Turn arbitrary title into UpperCamelCase slug (letters/digits only)
  # Example: "merge sorted-array!" -> "MergeSortedArray"
  # 1) replace non-alnum with spaces  2) capitalize words  3) remove spaces
  local input="$1"
  # shellcheck disable=SC2001
  local cleaned; cleaned="$(echo "$input" | sed -E 's/[^[:alnum:]]+/ /g')"
  # capitalize each word and join:
  # awk: for each word, ucfirst + rest; print without separators
  echo "$cleaned" | awk '{
    out="";
    for(i=1;i<=NF;i++){
      w=$i; if (length(w)>0) { w=toupper(substr(w,1,1)) substr(w,2) }
      out=out w
    }
    print out
  }'
}

pad4() {
  # Left pad with zeros to 4 width
  printf "%04d" "$1"
}

find_project_root() {
  # Walk up to locate Package.swift; default to current dir
  local d="$PWD"
  while [[ "$d" != "/" ]]; do
    if [[ -f "$d/Package.swift" ]]; then
      echo "$d"; return 0
    fi
    d="$(dirname "$d")"
  done
  echo "$PWD"
}

# --- interaction -----------------------------------------------------------
echo "🧩 Create a new LeetCode problem (Swift SPM)"
echo

read -rp "Enter problem number (e.g., 88): " NUMBER_RAW
# basic integer validation
if ! [[ "$NUMBER_RAW" =~ ^[0-9]+$ ]]; then
  echo "❌ Problem number must be an integer." >&2
  exit 1
fi
ID="$(pad4 "$NUMBER_RAW")"

read -rp "Enter problem title (e.g., Merge Sorted Array): " TITLE_RAW
if [[ -z "${TITLE_RAW// /}" ]]; then
  echo "❌ Title cannot be empty." >&2
  exit 1
fi

SLUG="$(to_upper_camel "$TITLE_RAW")"

echo
echo "Paste the problem statement/description below."
echo "(Finish input with Ctrl-D on a new line)"
echo "────────────────────────────────────────────────────────"
PROBLEM_CONTENT="$(cat || true)"
echo "────────────────────────────────────────────────────────"

if [[ -z "${PROBLEM_CONTENT// /}" ]]; then
  PROBLEM_CONTENT="(No content provided)"
fi

# --- paths -----------------------------------------------------------------
ROOT_DIR="$(find_project_root)"
PROBLEMS_DIR="${ROOT_DIR}/Sources/LeetCodeSolutions/Problems"
PROBLEM_DIR="${PROBLEMS_DIR}/P${ID}_${SLUG}"
SWIFT_FILE="${PROBLEM_DIR}/P${ID}_Solution1.swift"
README_FILE="${PROBLEM_DIR}/README.md"

# --- create ----------------------------------------------------------------
mkdir -p "${PROBLEM_DIR}"

# prevent accidental overwrite
if [[ -e "${SWIFT_FILE}" || -e "${README_FILE}" ]]; then
  echo "❌ Target files already exist:"
  [[ -e "${SWIFT_FILE}" ]] && echo "  - ${SWIFT_FILE}"
  [[ -e "${README_FILE}" ]] && echo "  - ${README_FILE}"
  echo "Aborting to avoid overwrite."
  exit 2
fi

cat > "${SWIFT_FILE}" <<EOF
public final class P\${ID}_Solution1 {
    public init() {}
}
EOF

cat > "${README_FILE}" <<EOF
# P\${ID}. \${TITLE_RAW}

\`\`\`text
\${PROBLEM_CONTENT}
\`\`\`

## Notes
- Add more solutions as \`P\${ID}_Solution2.swift\`, \`P\${ID}_Solution3.swift\`, etc.
- Filenames use the problem id prefix to avoid SwiftPM object-file name collisions.
EOF

echo
echo "✅ Created problem skeleton:"
echo "  - \${SWIFT_FILE}"
echo "  - \${README_FILE}"
echo
echo "Next steps:"
echo "  • Implement \`P\${ID}_Solution1\`."
echo "  • (Optional) Add tests in \`Tests/LeetCodeSolutionsTests/P\${ID}_\${SLUG}Tests.swift\`."
echo
EOS

  chmod +x "${SCRIPT_PATH}"
fi

# 3) Run the interactive generator
bash "${SCRIPT_PATH}"
