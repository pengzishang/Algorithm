# 🧠 LeetCodeSolutions (Swift + Xcode)

> A well-structured, testable, and debuggable Swift project for LeetCode problem solving.  
> Focused on building reusable algorithm components and long-term coding habits.

---

## 🚀 Overview

This repository is built with **Swift Package Manager (SPM)** and works seamlessly in **Xcode** or via the **command line**.

### Features
- 📂 **Problems** — each problem in its own folder with multiple solutions and a README.  
- ⚙️ **Utils** — reusable data structures like linked lists and trees.  
- 🧪 **Tests** — unit tests for correctness and regression checking.  
- 💻 **Sandbox** — a scratchpad area for quick testing or debugging solutions.  

---

## 📁 Project Structure

```
LeetCodeSolutions/
├── Package.swift
├── README.md
│
├── Sources/
│   ├── LeetCodeSolutions/
│   │   ├── Problems/
│   │   │   ├── P0001_TwoSum/
│   │   │   │   ├── P0001_Solution1.swift
│   │   │   │   ├── P0001_Solution2.swift
│   │   │   │   └── README.md
│   │   │   └── P0088_MergeSortedArray/
│   │   │       ├── P0088_Solution1.swift
│   │   │       ├── P0088_Solution2.swift
│   │   │       └── README.md
│   │   └── Utils/
│   │       ├── ListNode.swift
│   │       ├── LinkedList.swift
│   │       ├── TreeNode.swift
│   │       ├── BinaryTree.swift
│   │       └── Helpers.swift
│   │
│   └── Sandbox/
│       └── main.swift
│
└── Tests/
    └── LeetCodeSolutionsTests/
        ├── Support/
        │   ├── Assertions.swift
        │   └── Fixtures.swift
        ├── P0001_TwoSumTests.swift
        ├── P0088_MergeSortedArrayTests.swift
        └── UtilsTests.swift
```

---

## ⚙️ Usage

### Run the sandbox
```
swift run Sandbox
```

or in Xcode:  
1. Open `Package.swift`  
2. Choose **Product ▸ Scheme ▸ Sandbox**  
3. Run with **⌘R**

**Example output:**
```
P0088: [1, 2, 2, 3, 5, 6]
P0001: [0, 1]
```

### Run all tests
```
swift test
```

or in Xcode press **⌘U**.

---

## 🧩 Adding New Problems

1. Create a new folder under `Sources/LeetCodeSolutions/Problems/`, e.g.:
   ```
   P002_AddTwoNumbers/
   ```
2. Add your Swift solutions:
   ```swift
   public final class P002_Solution1 {
       public init() {}
       public func solve(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
           // implementation here
       }
   }
   ```
3. Add test cases in `Tests/LeetCodeSolutionsTests/P002_AddTwoNumbersTests.swift`
4. Optionally, include a `README.md` describing the thought process and complexity.

---

## 🧰 Utilities

| File | Description |
|------|--------------|
| `ListNode.swift` | Singly linked list node |
| `LinkedList.swift` | Helpers for building and comparing linked lists |
| `TreeNode.swift` | Binary tree node |
| `BinaryTree.swift` | Tree construction and traversal utilities |
| `Helpers.swift` | Misc utilities (matrix printing, random arrays, etc.) |

---

## 🧠 Best Practices

- Use `public` access for any class or method called from Sandbox.  
- Prefix each problem file with its number (to avoid SwiftPM build conflicts).  
- Document every problem with its own README including time/space complexity.  
- Regularly run `swift test` to verify correctness.  
- Use Sandbox for quick debugging or performance comparisons.

---

## 🏁 Example Problems

| ID | Title | Solutions | Test |
|----|--------|------------|------|
| [P0001](Sources/LeetCodeSolutions/Problems/P0001_TwoSum/README.md) | Two Sum | 2 | ✅ |
| [P0088](Sources/LeetCodeSolutions/Problems/P0088_MergeSortedArray/README.md) | Merge Sorted Array | 2 | ✅ |

---

## 🔮 Roadmap

- [ ] Add script for automatic problem folder generation  
- [ ] More data structures (Heap, Graph, Union-Find)  
- [ ] Benchmark utilities  
- [ ] Continuous Integration with GitHub Actions

---

## 📄 License

MIT License © 2025 Zishang Peng
