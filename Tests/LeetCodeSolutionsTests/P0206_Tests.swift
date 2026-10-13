@testable import LeetCodeSolutions
import XCTest

final class P0206_Solution1_Tests: XCTestCase {
    // Test Example 1: five nodes
    // 测试示例1: 五个节点
    func testExample1BasicFiveNodes() {
        let s = P0206_Solution1()
        let head = [1, 2, 3, 4, 5].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Example 1 Result: \(resultArray)")
        XCTAssertEqual(resultArray, [5, 4, 3, 2, 1], "Failed for head = [1,2,3,4,5]")
    }

    // Test Example 2: two nodes
    // 测试示例2: 两个节点
    func testExample2TwoNodes() {
        let s = P0206_Solution1()
        let head = [1, 2].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Example 2 Result: \(resultArray)")
        XCTAssertEqual(resultArray, [2, 1], "Failed for head = [1,2]")
    }

    // Test Example 3: empty list
    // 测试示例3: 空链表
    func testExample3EmptyList() {
        let s = P0206_Solution1()
        let head = [Int]().toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Example 3 Result: \(resultArray)")
        XCTAssertEqual(resultArray, [], "Failed for head = []: an empty list must stay empty")
    }

    // Boundary: a single node is its own reverse
    // 边界: 单节点链表反转后仍是自身
    func testSingleNode() {
        let s = P0206_Solution1()
        let head = [1].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Single Node Result: \(resultArray)")
        XCTAssertEqual(resultArray, [1], "Failed for head = [1]")
    }

    // Boundary: two nodes with identical values
    // 边界: 两个相同值的节点
    func testTwoNodesEqualValues() {
        let s = P0206_Solution1()
        let head = [5, 5].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Two Nodes Equal Result: \(resultArray)")
        XCTAssertEqual(resultArray, [5, 5], "Failed for head = [5,5]")
    }

    // Normal: odd number of nodes
    // 正常: 奇数个节点
    func testThreeNodesOddLength() {
        let s = P0206_Solution1()
        let head = [1, 2, 3].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Three Nodes Result: \(resultArray)")
        XCTAssertEqual(resultArray, [3, 2, 1], "Failed for head = [1,2,3]")
    }

    // Normal: even number of nodes
    // 正常: 偶数个节点
    func testFourNodesEvenLength() {
        let s = P0206_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Four Nodes Result: \(resultArray)")
        XCTAssertEqual(resultArray, [4, 3, 2, 1], "Failed for head = [1,2,3,4]")
    }

    // Normal: all values identical
    // 正常: 所有节点的值相同
    func testAllIdenticalValues() {
        let s = P0206_Solution1()
        let head = [7, 7, 7, 7, 7].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test All Identical Result: \(resultArray)")
        XCTAssertEqual(resultArray, [7, 7, 7, 7, 7], "Failed for head = [7,7,7,7,7]")
    }

    // Boundary: all values are zero
    // 边界: 所有节点的值都为 0
    func testAllZeroValues() {
        let s = P0206_Solution1()
        let head = [0, 0, 0].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test All Zero Result: \(resultArray)")
        XCTAssertEqual(resultArray, [0, 0, 0], "Failed for head = [0,0,0]")
    }

    // Normal: negative values only
    // 正常: 只含负数值
    func testNegativeValues() {
        let s = P0206_Solution1()
        let head = [-1, -2, -3].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Negative Values Result: \(resultArray)")
        XCTAssertEqual(resultArray, [-3, -2, -1], "Failed for head = [-1,-2,-3]")
    }

    // Normal: mixed negative and positive values
    // 正常: 负数与正数混合
    func testMixedSignValues() {
        let s = P0206_Solution1()
        let head = [-5000, 0, 5000].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Mixed Sign Result: \(resultArray)")
        XCTAssertEqual(resultArray, [5000, 0, -5000], "Failed for head = [-5000,0,5000]")
    }

    // Boundary: every node at the minimum allowed value
    // 边界: 所有节点都是允许的最小值
    func testMinimumValueNodes() {
        let s = P0206_Solution1()
        let head = [-5000, -5000].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Minimum Value Result: \(resultArray)")
        XCTAssertEqual(resultArray, [-5000, -5000], "Failed for head = [-5000,-5000]")
    }

    // Boundary: every node at the maximum allowed value
    // 边界: 所有节点都是允许的最大值
    func testMaximumValueNodes() {
        let s = P0206_Solution1()
        let head = [5000, 5000].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Maximum Value Result: \(resultArray)")
        XCTAssertEqual(resultArray, [5000, 5000], "Failed for head = [5000,5000]")
    }

    // Normal: strictly ascending input becomes strictly descending
    // 正常: 严格递增输入变为严格递减
    func testAscendingBecomesDescending() {
        let s = P0206_Solution1()
        let head = [1, 2, 3, 4, 5, 6].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Ascending Input Result: \(resultArray)")
        XCTAssertEqual(resultArray, [6, 5, 4, 3, 2, 1], "Failed for head = [1,2,3,4,5,6]")
    }

    // Normal: strictly descending input becomes strictly ascending
    // 正常: 严格递减输入变为严格递增
    func testDescendingBecomesAscending() {
        let s = P0206_Solution1()
        let head = [6, 5, 4, 3, 2, 1].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Descending Input Result: \(resultArray)")
        XCTAssertEqual(resultArray, [1, 2, 3, 4, 5, 6], "Failed for head = [6,5,4,3,2,1]")
    }

    // Normal: a palindrome list reverses to itself
    // 正常: 回文链表反转后与自身相同
    func testPalindromeList() {
        let s = P0206_Solution1()
        let head = [1, 2, 3, 2, 1].toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Palindrome Result: \(resultArray)")
        XCTAssertEqual(resultArray, [1, 2, 3, 2, 1], "Failed for head = [1,2,3,2,1]")
    }

    // Normal: ten nodes
    // 正常: 十个节点
    func testTenNodes() {
        let s = P0206_Solution1()
        let head = Array(1 ... 10).toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Ten Nodes Result: \(resultArray)")
        XCTAssertEqual(resultArray, Array((1 ... 10).reversed()), "Failed for head = 1...10")
    }

    // Normal: twenty nodes with a duplicated pattern
    // 正常: 二十个节点, 值呈重复模式
    func testTwentyNodesPattern() {
        let s = P0206_Solution1()
        let values = Array(repeating: [1, 2], count: 10).flatMap(\.self)
        let head = values.toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Twenty Nodes Result: \(resultArray)")
        XCTAssertEqual(resultArray, Array(values.reversed()), "Failed for head = twenty alternating nodes")
    }

    // Normal: one hundred nodes
    // 正常: 一百个节点
    func testHundredNodes() {
        let s = P0206_Solution1()
        let head = Array(1 ... 100).toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Hundred Nodes Result count: \(resultArray.count), head: \(resultArray.prefix(3)), tail: \(resultArray.suffix(3))")
        XCTAssertEqual(resultArray, Array((1 ... 100).reversed()), "Failed for head = 1...100")
    }

    // Extreme: the maximum allowed 5000 nodes, ascending
    // 极限: 允许的最大规模 5000 个节点, 递增
    func testExtreme5000Ascending() {
        let s = P0206_Solution1()
        let head = Array(1 ... 5000).toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Extreme 5000 Ascending count: \(resultArray.count), head: \(resultArray.prefix(3)), tail: \(resultArray.suffix(3))")
        XCTAssertEqual(resultArray, Array((1 ... 5000).reversed()), "Failed for head = 1...5000")
    }

    // Extreme: the maximum allowed 5000 nodes, all identical
    // 极限: 允许的最大规模 5000 个节点, 值全部相同
    func testExtreme5000Identical() {
        let s = P0206_Solution1()
        let head = Array(repeating: 42, count: 5000).toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Extreme 5000 Identical count: \(resultArray.count), head: \(resultArray.prefix(3)), tail: \(resultArray.suffix(3))")
        XCTAssertEqual(resultArray, Array(repeating: 42, count: 5000), "Failed for head = 5000 nodes of value 42")
    }

    // Extreme: the maximum allowed 5000 nodes, descending
    // 极限: 允许的最大规模 5000 个节点, 递减
    func testExtreme5000Descending() {
        let s = P0206_Solution1()
        let head = Array((1 ... 5000).reversed()).toLinkedList()
        let result = s.reverseList(head)
        let resultArray = result?.printList() ?? []
        print("Test Extreme 5000 Descending count: \(resultArray.count), head: \(resultArray.prefix(3)), tail: \(resultArray.suffix(3))")
        XCTAssertEqual(resultArray, Array(1 ... 5000), "Failed for head = 5000...1")
    }

    // Extreme: performance guard on the maximum input size
    // 极限: 最大输入规模下的性能测试, 用于验证是否超时
    func testPerformance5000Nodes() {
        let s = P0206_Solution1()
        let head = Array(1 ... 5000).toLinkedList()
        measure {
            _ = s.reverseList(head)
        }
    }
}
