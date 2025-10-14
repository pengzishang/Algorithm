
# LeetCodeSolutions — Swift (SPM) 🚀

[![CI](https://github.com/pengzishang/Algorithm/actions/workflows/ci.yml/badge.svg)](https://github.com/pengzishang/Algorithm/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/swift-6.2-orange.svg?logo=swift)](https://swift.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

English (formal)
----------------

LeetCodeSolutions is a collection of algorithmic problem solutions implemented in Swift and organized as a Swift Package (SPM). The repository is intended for developers who desire a well-structured, testable, and reproducible set of problem solutions, along with utility types for linked lists and binary trees and a lightweight Sandbox executable for experimentation.

This README provides: quick start commands, project layout, naming conventions, guidance for adding problems, a summary of utility modules, and notes on testing and CI.

中文（简体，正式）
-------------------

LeetCodeSolutions 是一个使用 Swift 实现的算法题解集合，采用 Swift Package 管理（SPM）。该仓库面向追求结构清晰、可测试、可复现题解的开发者，包含链表与树等数据结构工具，以及用于快速试验的 Sandbox 可执行程序。

本 README 包含：快速上手命令、项目结构、命名规范、新题添加指南、工具模块说明以及测试与 CI 相关注意事项。

## Quickstart ⚡

English
-------

1. Build the package:

```bash
swift build
```

2. Run the Sandbox executable for sample outputs:

```bash
swift run Sandbox
```

3. Execute the unit tests:

```bash
swift test
```

中文（简体）
------------

1. 构建项目：

```bash
swift build
```

2. 运行 Sandbox 可执行程序查看示例输出：

```bash
swift run Sandbox
```

3. 运行单元测试：

```bash
swift test
```

## Project layout 📁

English
-------

Top-level important files and directories:

- `Package.swift` — defines SPM products and targets: library `LeetCodeSolutions`, executable `Sandbox`, test target `LeetCodeSolutionsTests`.
- `Sources/LeetCodeSolutions/Problems/` — per-problem directories containing one or more solution implementations and an optional README.
- `Sources/LeetCodeSolutions/Utils/` — shared data structures and helpers (linked-lists, trees, builders).
- `Sources/Sandbox/` — executable target used as a local scratchpad for examples.
- `Tests/LeetCodeSolutionsTests/` — unit test targets and fixtures.

Example problem directory:

```
Sources/LeetCodeSolutions/Problems/P0001_TwoSum/
  ├─ P0001_Solution1.swift  # primary solution
  ├─ P0001_Solution2.swift  # alternative approach
  └─ README.md              # notes & complexity
```

中文（简体）
------------

重要文件和目录：

- `Package.swift` — 定义 SPM 的产品与目标：库 `LeetCodeSolutions`、可执行 `Sandbox`、测试目标 `LeetCodeSolutionsTests`。
- `Sources/LeetCodeSolutions/Problems/` — 每题一个目录，包含一个或多个解法与可选 README。
- `Sources/LeetCodeSolutions/Utils/` — 可复用的数据结构与辅助工具（链表、树、构造器）。
- `Sources/Sandbox/` — 用作本地示例与快速测试的可执行 target。
- `Tests/LeetCodeSolutionsTests/` — 单元测试与测试夹具。

## Naming & conventions 🧭

English
-------

- Prefix solution filenames and public types with a zero-padded problem id: `P{NNNN}_...` (for example `P0001_Solution1.swift`). This convention helps prevent symbol collisions during SPM builds.

- Implement solutions using a compact `public final class` wrapper, exposing public methods only when necessary for `Sandbox` or tests.

中文（简体）
------------

- 使用零补齐题号作为文件与公共类型前缀：`P{NNNN}_...`（例如 `P0001_Solution1.swift`），以减少 SPM 构建期间的符号冲突风险。

- 建议使用紧凑的 `public final class` 模式实现解法，仅在 `Sandbox` 或测试需要访问时暴露 `public` 方法。

## Adding a new problem (recommended) ✍️

English
-------

1. Scaffold a new problem using the helper script:

```bash
bash Scripts/new_problem.sh
```

2. Implement one or more solution files in the created directory. Use the `P{NNNN}_Solution{N}.swift` naming convention for additional implementations.

3. Add corresponding tests under `Tests/LeetCodeSolutionsTests/` and import the library with `@testable import LeetCodeSolutions`.

中文（简体）
------------

1. 使用脚本生成题目骨架：

```bash
bash Scripts/new_problem.sh
```

2. 在生成的目录中实现一个或多个解法，额外解法请使用 `P{NNNN}_Solution{N}.swift` 命名。

3. 在 `Tests/LeetCodeSolutionsTests/` 中添加对应测试，并在测试中通过 `@testable import LeetCodeSolutions` 引入库。

## Utilities 🔌

English
-------

- `Sources/LeetCodeSolutions/Utils/ListNode.swift` — `ListNode` and `Array.toLinkedList()` helper for constructing linked-list inputs.
- `Sources/LeetCodeSolutions/Utils/TreeNode.swift` — `TreeNode` used in binary-tree problems.

中文（简体）
------------

- `Sources/LeetCodeSolutions/Utils/ListNode.swift` — 提供 `ListNode` 与 `Array.toLinkedList()`，用于快速构建链表测试输入。
- `Sources/LeetCodeSolutions/Utils/TreeNode.swift` — 提供二叉树节点 `TreeNode`。

请优先复用已有工具函数，避免重复实现相同功能。


## Testing & CI notes 🧪

English
-------

- Run tests locally with:

```bash
swift test
```

- A GitHub Actions workflow `.github/workflows/ci.yml` is included and configured to run `swift test` on `macos-latest` for commits and pull requests against `main`. The CI badge at the top links to the workflow status.

中文（简体）
------------

- 在本地运行测试：

```bash
swift test
```

- 仓库包含 `.github/workflows/ci.yml` 工作流，会在 `macos-latest` 上对 `main` 分支的提交与 PR 执行 `swift test`。README 顶部的 CI 徽章指向该工作流。


## Small tips 💡

English
-------

- Keep the public API surface minimal. Prefer `final class` with `public init()` for solution types.
- Use the provided `ListNode` and `TreeNode` utilities when constructing test inputs for linked-list and tree problems.
- Run `swift build` before significant refactors to find compile-time issues early.

中文（简体）
------------

- 尽量保持公共 API 最小化，推荐使用 `final class` 并提供 `public init()`。
- 构建链表或树的测试输入时，优先使用仓库内的 `ListNode` 与 `TreeNode` 工具。
- 在重大重构前运行 `swift build` 以尽早发现编译错误。

## Contributing 🤝

English
-------

Contributions are welcome. For significant changes, please open an issue to discuss the proposal first. For smaller changes, submit a pull request and include tests where applicable.

中文（简体）
------------

欢迎贡献。对于重大改动建议先提交 Issue 讨论；对于较小的修改，请直接提交包含测试（若适用）的 PR。

## License 📜

MIT © 2025 Zishang Peng
