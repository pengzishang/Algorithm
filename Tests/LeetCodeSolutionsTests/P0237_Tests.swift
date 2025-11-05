@testable import LeetCodeSolutions
import XCTest

final class P0237_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P0237_Solution1()
        let head = [4, 5, 1, 9].toLinkedList()
        let nodeToDelete = head?.next // node with value 5
        s.deleteNode(nodeToDelete)
        XCTAssertEqual(head?.toArray(), [4, 1, 9])
    }

    func testSolution1_Example2() {
        let s = P0237_Solution1()
        let head = [4, 5, 1, 9].toLinkedList()
        let nodeToDelete = head?.next?.next // node with value 1
        s.deleteNode(nodeToDelete)
        XCTAssertEqual(head?.toArray(), [4, 5, 9])
    }

    func testSolution1_DeleteSecondNode() {
        let s = P0237_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let nodeToDelete = head?.next // node with value 2
        s.deleteNode(nodeToDelete)
        XCTAssertEqual(head?.toArray(), [1, 3, 4])
    }

    func testSolution1_TwoNodesList() {
        let s = P0237_Solution1()
        let head = [1, 2].toLinkedList()
        let nodeToDelete = head // node with value 1
        s.deleteNode(nodeToDelete)
        XCTAssertEqual(head?.toArray(), [2])
    }
}
