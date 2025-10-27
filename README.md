
# LeetCodeSolutions — Swift (SPM) 🚀

[![CI](https://github.com/pengzishang/Algorithm/actions/workflows/ci.yml/badge.svg)](https://github.com/pengzishang/Algorithm/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/swift-6.1-orange.svg?logo=swift)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-macOS%2013%2B-lightgrey.svg)](https://www.apple.com/macos/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> 一个基于 Swift Package Manager 的 LeetCode 算法题解集合，包含 **19** 道题目的多种解法实现。
>
> 📚 **[查看 Wiki 获取详细文档和学习资源](../../wiki)** | **[View Wiki for detailed docs and resources](../../wiki)**

## ✨ 特性

- 🎯 **规范化项目结构**：使用 Swift Package Manager 管理，支持模块化开发
- 🧪 **完整测试覆盖**：每道题目都配有单元测试，确保代码质量
- 🔧 **实用工具库**：内置链表、二叉树等常用数据结构工具类
- 🚀 **快速上手**：提供脚本自动生成新题目模板
- 📝 **详细题解**：每题包含问题描述和复杂度分析
- 🎨 **代码格式化**：统一的代码风格和命名规范
- ⚡ **Sandbox 测试**：独立的可执行环境用于快速验证想法

---

## 社区与贡献 🤝 Community & Contribution

欢迎所有形式的贡献！在参与前，请先阅读以下文档以确保协作顺畅：

- 📜 行为准则 Code of Conduct: [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
- 🤝 贡献指南 Contributing Guide: [CONTRIBUTING.md](CONTRIBUTING.md)
- 🔒 安全策略 Security Policy: [SECURITY.md](SECURITY.md)

如发现安全相关问题，请按安全策略中的指引私下报告，我们会尽快响应。

---
English
-------

LeetCodeSolutions is a collection of algorithmic problem solutions implemented in Swift and organized as a Swift Package (SPM). The repository is intended for developers who desire a well-structured, testable, and reproducible set of problem solutions, along with utility types for linked lists and binary trees and a lightweight Sandbox executable for experimentation.

This README provides: quick start commands, project layout, naming conventions, guidance for adding problems, a summary of utility modules, and notes on testing and CI.

中文（简体）
------------

LeetCodeSolutions 是一个使用 Swift 实现的算法题解集合，采用 Swift Package 管理（SPM）。该仓库面向追求结构清晰、可测试、可复现题解的开发者，包含链表与树等数据结构工具，以及用于快速试验的 Sandbox 可执行程序。

本 README 包含：快速上手命令、项目结构、命名规范、新题添加指南、工具模块说明以及测试与 CI 相关注意事项。

## 快速开始 ⚡ Quick Start

### 环境要求 Requirements

- macOS 13.0+
- Swift 6.1+
- Xcode 15.0+ (可选，用于 IDE 开发 / Optional, for IDE development)

### 基本命令 Basic Commands

1️⃣ **克隆项目 Clone the Repository**

```bash
git clone https://github.com/pengzishang/Algorithm.git
cd Algorithm
```

2️⃣ **构建项目 Build**

```bash
swift build
```

3️⃣ **运行 Sandbox Run Sandbox**（查看示例输出 / See sample outputs）

```bash
swift run Sandbox
```

4️⃣ **运行测试 Run Tests**

```bash
swift test
```

5️⃣ **在 Xcode 中打开 Open in Xcode**（可选 / Optional）

```bash
open Package.swift
```

---

## 已实现题目 📚 Solved Problems

目前已实现 **19** 道 LeetCode 题目，涵盖数组、字符串、链表、数学等多个类别。

Currently implemented **19** LeetCode problems, covering arrays, strings, linked lists, math, and more.

| 题号 | 题目 | 难度 | 标签 |
|------|------|------|------|
| [1](Sources/LeetCodeSolutions/Problems/P0001_Two%20Sum/) | Two Sum | 简单 Easy | 数组, 哈希表 Array, Hash Table |
| [2](Sources/LeetCodeSolutions/Problems/P0002_Add%20Two%20Numbers/) | Add Two Numbers | 中等 Medium | 链表, 数学 Linked List, Math |
| [3](Sources/LeetCodeSolutions/Problems/P0003_Longest%20Substring%20Without%20Repeating%20Characters/) | Longest Substring Without Repeating Characters | 中等 Medium | 字符串, 滑动窗口 String, Sliding Window |
| [14](Sources/LeetCodeSolutions/Problems/P0014_Longest%20Common%20Prefix/) | Longest Common Prefix | 简单 Easy | 字符串 String |
| [15](Sources/LeetCodeSolutions/Problems/P0015_3Sum/) | 3Sum | 中等 Medium | 数组, 双指针 Array, Two Pointers |
| [26](Sources/LeetCodeSolutions/Problems/P0026_RemoveDuplicateItemInArray/) | Remove Duplicates from Sorted Array | 简单 Easy | 数组, 双指针 Array, Two Pointers |
| [27](Sources/LeetCodeSolutions/Problems/P0027_RemoveElements/) | Remove Element | 简单 Easy | 数组, 双指针 Array, Two Pointers |
| [43](Sources/LeetCodeSolutions/Problems/P0043_Multiply%20Strings/) | Multiply Strings | 中等 Medium | 字符串, 数学 String, Math |
| [50](Sources/LeetCodeSolutions/Problems/P0050_Pow(x,%20n)/) | Pow(x, n) | 中等 Medium | 数学, 递归 Math, Recursion |
| [88](Sources/LeetCodeSolutions/Problems/P0088_MergeSortedArray/) | Merge Sorted Array | 简单 Easy | 数组, 双指针 Array, Two Pointers |
| [203](Sources/LeetCodeSolutions/Problems/P0203_RemoveLinkedListElements/) | Remove Linked List Elements | 简单 Easy | 链表 Linked List |
| [237](Sources/LeetCodeSolutions/Problems/P0237_DeleteNodeInALinkedList/) | Delete Node in a Linked List | 中等 Medium | 链表 Linked List |
| [283](Sources/LeetCodeSolutions/Problems/P0283_MoveZeroes/) | Move Zeroes | 简单 Easy | 数组, 双指针 Array, Two Pointers |
| [496](Sources/LeetCodeSolutions/Problems/P0496_Next%20Greater%20Element%20I/) | Next Greater Element I | 简单 Easy | 栈, 数组 Stack, Array |
| [2235](Sources/LeetCodeSolutions/Problems/P2235_Add%20Two%20Integers/) | Add Two Integers | 简单 Easy | 数学 Math |
| [2460](Sources/LeetCodeSolutions/Problems/P2460_ApplyOpertions/) | Apply Operations to an Array | 简单 Easy | 数组, 模拟 Array, Simulation |
| [2487](Sources/LeetCodeSolutions/Problems/P2487_Remove%20Nodes%20From%20Linked%20List/) | Remove Nodes From Linked List | 中等 Medium | 链表, 栈 Linked List, Stack |
| [2996](Sources/LeetCodeSolutions/Problems/P2996_Smallest%20Missing%20Integer%20Greater%20Than%20Sequential%20Prefix%20Sum/) | Smallest Missing Integer Greater Than Sequential Prefix Sum | 简单 Easy | 数组, 哈希表 Array, Hash Table |
| [3217](Sources/LeetCodeSolutions/Problems/P3217_Delete%20Nodes%20From%20Linked%20List%20Present%20in%20Array/) | Delete Nodes From Linked List Present in Array | 中等 Medium | 链表, 哈希表 Linked List, Hash Table |

> 💡 每道题目都包含多种解法实现，并附有详细的复杂度分析。
> 
> Each problem includes multiple solution implementations with detailed complexity analysis.

---

## 项目结构 📁 Project Structure

**中文说明 / English Description**

```
Algorithm/
├── Package.swift                      # SPM 配置文件
├── README.md                          # 项目说明文档
├── Scripts/                           # 辅助脚本
│   ├── new_problem.sh                # 创建新题目模板
│   ├── format.sh                     # 代码格式化
│   └── New LeetCode Problem.command  # macOS 快捷脚本
├── Sources/
│   ├── LeetCodeSolutions/            # 主库模块
│   │   ├── Problems/                 # 题解目录
│   │   │   ├── P0001_Two Sum/       # 单个题目
│   │   │   │   ├── P0001_Solution1.swift
│   │   │   │   ├── P0001_Solution2.swift
│   │   │   │   └── README.html      # 题目描述
│   │   │   └── ...                  # 其他题目
│   │   └── Utils/                    # 工具类
│   │       ├── ListNode.swift       # 链表节点
│   │       ├── TreeNode.swift       # 树节点
│   │       └── PrettyPrint.swift    # 输出格式化
│   └── Sandbox/                      # 可执行测试环境
│       └── main.swift
└── Tests/
    └── LeetCodeSolutionsTests/       # 单元测试
        ├── P0001_Tests.swift
        ├── P0002_Tests.swift
        └── ...
```

### 目录说明 Directory Description

**中文 Chinese:**

- **Problems/**: 每道题一个文件夹，命名格式 `P{题号}_{题目名称}/`
  - 每个题目包含一个或多个解法文件：`P{题号}_Solution{序号}.swift`
  - 包含题目描述文件：`README.html` 或 `README.md`

- **Utils/**: 公共工具类，包括：
  - `ListNode`: 链表节点定义及工具方法
  - `TreeNode`: 二叉树节点定义
  - `PrettyPrint`: 美化输出工具

- **Sandbox/**: 独立的可执行程序，用于快速测试和验证

- **Tests/**: 单元测试，每个测试文件对应一道题目

**English:**

- **Problems/**: One folder per problem, named as `P{Number}_{Problem Name}/`
  - Each problem contains one or more solution files: `P{Number}_Solution{N}.swift`
  - Includes problem description: `README.html` or `README.md`

- **Utils/**: Common utility classes:
  - `ListNode`: Linked list node definition and utility methods
  - `TreeNode`: Binary tree node definition
  - `PrettyPrint`: Output formatting utilities

- **Sandbox/**: Standalone executable for quick testing and validation

- **Tests/**: Unit tests, one test file per problem

---

## 命名规范 🧭 Naming Conventions

### 文件命名 File Naming

**中文 Chinese:**

- **题目文件夹**: `P{四位题号}_{题目名称}/`
  - 示例: `P0001_Two Sum/`, `P0088_MergeSortedArray/`
  
- **解法文件**: `P{四位题号}_Solution{序号}.swift`
  - 示例: `P0001_Solution1.swift`, `P0001_Solution2.swift`

- **测试文件**: `P{四位题号}_Tests.swift`
  - 示例: `P0001_Tests.swift`

**English:**

- **Problem Folder**: `P{Four-digit Number}_{Problem Name}/`
  - Examples: `P0001_Two Sum/`, `P0088_MergeSortedArray/`
  
- **Solution File**: `P{Four-digit Number}_Solution{N}.swift`
  - Examples: `P0001_Solution1.swift`, `P0001_Solution2.swift`

- **Test File**: `P{Four-digit Number}_Tests.swift`
  - Example: `P0001_Tests.swift`

### 代码规范 Code Conventions

**中文 Chinese:**

- 使用 `public final class` 包装解法
- 仅在必要时暴露 `public` 方法（供测试或 Sandbox 使用）
- 遵循 Swift 标准命名约定：驼峰命名法

**English:**

- Use `public final class` to wrap solutions
- Expose `public` methods only when necessary (for testing or Sandbox)
- Follow Swift naming conventions: camelCase

### 示例 Example

```swift
// P0001_Solution1.swift
public final class P0001_Solution1 {
    public init() {}
    
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // 实现代码
    }
}
```

---

## 添加新题目 ✍️ Adding New Problems

### 方法一：使用自动化脚本（推荐） Method 1: Automated Script (Recommended)

**中文步骤 Chinese Steps:**

1. **运行脚本生成模板**

```bash
bash Scripts/new_problem.sh
```

2. **按提示输入信息**
   - 题号（如: 1）
   - 题目名称（如: Two Sum）

3. **脚本将自动创建**
   - 题目文件夹: `Sources/LeetCodeSolutions/Problems/P{题号}_{题目名称}/`
   - 解法文件: `P{题号}_Solution1.swift`
   - 测试文件: `Tests/LeetCodeSolutionsTests/P{题号}_Tests.swift`

**English Steps:**

1. **Run the script to generate template**

```bash
bash Scripts/new_problem.sh
```

2. **Enter information as prompted**
   - Problem number (e.g., 1)
   - Problem name (e.g., Two Sum)

3. **The script will automatically create**
   - Problem folder: `Sources/LeetCodeSolutions/Problems/P{Number}_{Name}/`
   - Solution file: `P{Number}_Solution1.swift`
   - Test file: `Tests/LeetCodeSolutionsTests/P{Number}_Tests.swift`

### 方法二：手动创建 Method 2: Manual Creation

**中文步骤 Chinese Steps:**

1. **创建题目文件夹**

```bash
mkdir -p "Sources/LeetCodeSolutions/Problems/P0001_Two Sum"
```

2. **创建解法文件** `P0001_Solution1.swift`

```swift
public final class P0001_Solution1 {
    public init() {}
    
    public func solve() -> Int {
        // 你的解法实现
        return 0
    }
}
```

3. **创建测试文件** `Tests/LeetCodeSolutionsTests/P0001_Tests.swift`

```swift
import XCTest
@testable import LeetCodeSolutions

final class P0001_Tests: XCTestCase {
    func testSolution1() {
        let solution = P0001_Solution1()
        XCTAssertEqual(solution.solve(), 0)
    }
}
```

4. **运行测试验证**

```bash
swift test --filter P0001_Tests
```

**English Steps:**

1. **Create problem folder**

```bash
mkdir -p "Sources/LeetCodeSolutions/Problems/P0001_Two Sum"
```

2. **Create solution file** `P0001_Solution1.swift`

```swift
public final class P0001_Solution1 {
    public init() {}
    
    public func solve() -> Int {
        // Your solution implementation
        return 0
    }
}
```

3. **Create test file** `Tests/LeetCodeSolutionsTests/P0001_Tests.swift`

```swift
import XCTest
@testable import LeetCodeSolutions

final class P0001_Tests: XCTestCase {
    func testSolution1() {
        let solution = P0001_Solution1()
        XCTAssertEqual(solution.solve(), 0)
    }
}
```

4. **Run tests to verify**

```bash
swift test --filter P0001_Tests
```

### 开发流程建议 Development Workflow

**中文 Chinese:**

1. 📖 阅读题目，理解要求
2. 💡 思考解法，分析复杂度
3. ⌨️ 实现代码
4. 🧪 编写测试用例
5. ✅ 运行测试确保正确性
6. 📝 添加注释和复杂度分析

**English:**

1. 📖 Read and understand the problem
2. 💡 Think about solutions and analyze complexity
3. ⌨️ Implement the code
4. 🧪 Write test cases
5. ✅ Run tests to ensure correctness
6. 📝 Add comments and complexity analysis

---

## 工具类说明 🔌 Utility Classes

### ListNode - 链表工具 Linked List Utilities

**中文说明 Chinese:**

提供链表相关的便捷操作：

**English:**

Provides convenient linked list operations:

```swift
// 定义 Definition
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
    }
}

// 数组转链表 Array to Linked List
let list = [1, 2, 3, 4, 5].toLinkedList()

// 链表转数组 Linked List to Array
let array = list?.toArray()

// 打印链表 Print Linked List
list?.printList() // 输出 Output: 1 -> 2 -> 3 -> 4 -> 5
```

### TreeNode - 二叉树工具 Binary Tree Utilities

```swift
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
    }
}
```

### PrettyPrint - 格式化输出 Formatted Output

**中文 Chinese:** 用于美化控制台输出，便于调试。

**English:** Used for beautifying console output for easier debugging.

### 使用建议 Usage Recommendations

**中文 Chinese:**

- ✅ 优先使用项目内置的工具类
- ✅ 避免重复实现相同功能
- ✅ 在测试中使用工具方法构建测试数据

**English:**

- ✅ Prioritize using built-in utility classes
- ✅ Avoid reimplementing the same functionality
- ✅ Use utility methods to build test data in tests

---

## 测试与 CI 🧪 Testing & CI

### 本地测试 Local Testing

**运行所有测试 Run All Tests**

```bash
swift test
```

**运行特定测试 Run Specific Tests**

```bash
# 运行单个测试文件 Run single test file
swift test --filter P0001_Tests

# 运行特定测试用例 Run specific test case
swift test --filter P0001_Tests/testSolution1
```

**查看测试详情 View Test Details**

```bash
swift test --verbose
```

### GitHub Actions CI

**中文说明 Chinese:**

项目配置了自动化 CI 流程（`.github/workflows/ci.yml`），会在以下情况自动运行：

- 🔀 Pull Request 到 `main` 分支
- 📝 直接提交到 `main` 分支

**CI 流程包括**：
- ✅ Swift 代码编译检查
- ✅ 运行完整测试套件
- ✅ 代码格式验证（可选）

查看 CI 状态：点击 README 顶部的 CI 徽章

**English:**

The project is configured with automated CI pipeline (`.github/workflows/ci.yml`), which runs automatically on:

- 🔀 Pull Requests to `main` branch
- 📝 Direct commits to `main` branch

**CI Pipeline Includes**:
- ✅ Swift code compilation check
- ✅ Run complete test suite
- ✅ Code format validation (optional)

View CI status: Click the CI badge at the top of README

### 测试最佳实践 Testing Best Practices

**中文 Chinese:**

1. **完整的测试用例**
   - 常规情况
   - 边界条件
   - 异常输入

2. **清晰的测试命名**
   ```swift
   func testTwoSum_WithValidInput_ReturnsCorrectIndices()
   func testTwoSum_WithNoSolution_ReturnsEmpty()
   ```

3. **使用 XCTest 断言**
   ```swift
   XCTAssertEqual(result, expected)
   XCTAssertTrue(condition)
   XCTAssertNil(value)
   ```

**English:**

1. **Complete Test Cases**
   - Normal cases
   - Edge cases
   - Invalid inputs

2. **Clear Test Naming**
   ```swift
   func testTwoSum_WithValidInput_ReturnsCorrectIndices()
   func testTwoSum_WithNoSolution_ReturnsEmpty()
   ```

3. **Use XCTest Assertions**
   ```swift
   XCTAssertEqual(result, expected)
   XCTAssertTrue(condition)
   XCTAssertNil(value)
   ```

---

## 开发技巧 💡 Development Tips

### 代码质量 Code Quality

**中文 Chinese:**

- 📌 保持 API 简洁，仅暴露必要的 `public` 接口
- 📌 使用 `final class` 防止不必要的继承
- 📌 添加注释说明算法思路和时间/空间复杂度
- 📌 遵循 Swift 命名规范和代码风格

**English:**

- 📌 Keep API minimal, only expose necessary `public` interfaces
- 📌 Use `final class` to prevent unnecessary inheritance
- 📌 Add comments explaining algorithm logic and time/space complexity
- 📌 Follow Swift naming conventions and code style

### 性能优化 Performance Optimization

**中文 Chinese:**

- ⚡ 优先考虑时间复杂度，再优化空间复杂度
- ⚡ 使用合适的数据结构（哈希表、栈、队列等）
- ⚡ 考虑原地算法减少额外空间使用

**English:**

- ⚡ Prioritize time complexity, then optimize space complexity
- ⚡ Use appropriate data structures (hash tables, stacks, queues, etc.)
- ⚡ Consider in-place algorithms to reduce extra space usage

### 调试技巧 Debugging Tips

**中文 Chinese:**

```swift
// 在 Sandbox 中快速测试
// Sources/Sandbox/main.swift
import LeetCodeSolutions

let solution = P0001_Solution1()
print(solution.twoSum([2, 7, 11, 15], 9))
```

```bash
# 运行 Sandbox
swift run Sandbox
```

**English:**

```swift
// Quick testing in Sandbox
// Sources/Sandbox/main.swift
import LeetCodeSolutions

let solution = P0001_Solution1()
print(solution.twoSum([2, 7, 11, 15], 9))
```

```bash
# Run Sandbox
swift run Sandbox
```

### 代码复用 Code Reuse

**中文 Chinese:**

- ✅ 使用 `Utils/` 中的工具类
- ✅ 相似题目可以参考已有解法
- ✅ 提取公共逻辑到辅助函数

**English:**

- ✅ Use utility classes in `Utils/`
- ✅ Reference existing solutions for similar problems
- ✅ Extract common logic into helper functions

### 重构建议 Refactoring Suggestions

**中文 Chinese:**

```bash
# 在重构前确保代码可编译
swift build

# 运行测试确保功能正确
swift test

# 使用格式化脚本统一代码风格
bash Scripts/format.sh
```

**English:**

```bash
# Ensure code compiles before refactoring
swift build

# Run tests to ensure functionality
swift test

# Use formatting script to unify code style
bash Scripts/format.sh
```

---

## 关于本项目 📖 About This Project

### 中文说明 Chinese

这是我的个人 LeetCode 题解集合，用于：

- 📚 **系统化学习**：记录和整理算法学习过程
- 🎯 **面试准备**：为技术面试做准备，展示编码能力
- 💪 **能力提升**：通过持续练习提高算法和数据结构能力
- 📝 **知识沉淀**：建立个人的算法知识库

本项目采用工程化的方式组织代码，包含完整的测试、CI/CD 流程，展示了：
- ✨ 良好的代码组织能力
- ✨ 规范的工程实践
- ✨ 测试驱动开发思维
- ✨ 持续学习和改进的态度

### English

This is my personal LeetCode solutions collection, created for:

- 📚 **Systematic Learning**: Record and organize algorithm learning process
- 🎯 **Interview Preparation**: Prepare for technical interviews and demonstrate coding skills
- 💪 **Skill Enhancement**: Improve algorithm and data structure abilities through continuous practice
- 📝 **Knowledge Base**: Build a personal algorithm knowledge repository

This project adopts an engineering approach to organize code, with complete testing and CI/CD pipeline, demonstrating:
- ✨ Good code organization skills
- ✨ Standard engineering practices
- ✨ Test-driven development mindset
- ✨ Attitude of continuous learning and improvement

---

## 项目亮点 ✨ Project Highlights

### 中文 Chinese

- 🏗️ **工程化架构**：使用 SPM 进行模块化管理，而非简单的文件堆砌
- 🧪 **完整测试**：每道题都有对应的单元测试，保证代码质量
- 🔄 **持续集成**：GitHub Actions 自动化测试，确保代码可靠性
- 📐 **代码规范**：统一的命名约定和代码风格
- 🛠️ **工具支持**：提供脚本自动化创建题目模板
- 📊 **复杂度分析**：每个解法都包含时间和空间复杂度分析
- 🎨 **多种解法**：同一题目提供多种解决方案，展示不同思路

### English

- 🏗️ **Engineering Architecture**: Modular management using SPM, not just a pile of files
- 🧪 **Complete Testing**: Unit tests for each problem, ensuring code quality
- 🔄 **Continuous Integration**: GitHub Actions automated testing for reliability
- 📐 **Code Standards**: Unified naming conventions and code style
- 🛠️ **Tool Support**: Scripts for automated problem template creation
- 📊 **Complexity Analysis**: Time and space complexity analysis for each solution
- 🎨 **Multiple Solutions**: Multiple approaches for the same problem, showing different perspectives

---

## 技术栈 🛠️ Tech Stack

- **语言 Language**: Swift 6.1
- **包管理 Package Manager**: Swift Package Manager (SPM)
- **测试框架 Testing Framework**: XCTest
- **CI/CD**: GitHub Actions
- **平台 Platform**: macOS 13.0+

---

## 许可证 📜 License

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

MIT © 2025 Zishang Peng

---

## 联系方式 📬 Contact

- 👤 **作者 Author**: Zishang Peng
- 🔗 **GitHub**: [@pengzishang](https://github.com/pengzishang)
- 📦 **项目主页 Repository**: [Algorithm](https://github.com/pengzishang/Algorithm)
- 🔒 **安全策略 Security Policy**: [SECURITY.md](SECURITY.md)

---

## 更新日志 📅 Changelog

### 2025-10

**中文 Chinese:**
- ✨ 项目初始化
- ✨ 实现 19 道 LeetCode 题目
- ✨ 添加 CI/CD 配置
- ✨ 完善项目文档
 - ✨ 新增社区健康文件：CODE_OF_CONDUCT.md、CONTRIBUTING.md、SECURITY.md

**English:**
- ✨ Project initialization
- ✨ Implemented 19 LeetCode problems
- ✨ Added CI/CD configuration
- ✨ Improved project documentation
 - ✨ Added community health files: CODE_OF_CONDUCT.md, CONTRIBUTING.md, SECURITY.md

---

<div align="center">

**如果这个项目对你有帮助或启发，欢迎给个 Star！⭐**

**If this project helps or inspires you, feel free to give it a Star! ⭐**

---

**Made with ❤️ and ☕ by Zishang Peng**

*"Code is like humor. When you have to explain it, it's bad." - Cory House*

</div>
