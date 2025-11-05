@testable import LeetCodeSolutions
import XCTest

final class P0203_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P0203_Solution1()
        let head = [1, 2, 6, 3, 4, 5, 6].toLinkedList()
        let result = s.removeElements(head, 6)
        XCTAssertEqual(result?.toArray(), [1, 2, 3, 4, 5])
    }

    func testSolution1_Example2() {
        let s = P0203_Solution1()
        let head: ListNode? = nil
        let result = s.removeElements(head, 1)
        XCTAssertNil(result)
    }

    func testSolution1_Example3() {
        let s = P0203_Solution1()
        let head = [7, 7, 7, 7].toLinkedList()
        let result = s.removeElements(head, 7)
        XCTAssertNil(result)
    }

    func testSolution1_RemoveHead() {
        let s = P0203_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let result = s.removeElements(head, 1)
        XCTAssertEqual(result?.toArray(), [2, 3, 4])
    }

    func testSolution1_RemoveTail() {
        let s = P0203_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let result = s.removeElements(head, 4)
        XCTAssertEqual(result?.toArray(), [1, 2, 3])
    }

    func testSolution1_RemoveMiddle() {
        let s = P0203_Solution1()
        let head = [1, 2, 3, 4, 5].toLinkedList()
        let result = s.removeElements(head, 3)
        XCTAssertEqual(result?.toArray(), [1, 2, 4, 5])
    }

    func testSolution1_NoRemoval() {
        let s = P0203_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let result = s.removeElements(head, 5)
        XCTAssertEqual(result?.toArray(), [1, 2, 3, 4])
    }
}
