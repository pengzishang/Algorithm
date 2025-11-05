@testable import LeetCodeSolutions
import XCTest

final class P2487_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P2487_Solution1()
        let head = [5, 2, 13, 3, 8].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [13, 8])
    }

    func testSolution1_Example2() {
        let s = P2487_Solution1()
        let head = [1, 1, 1, 1].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [1, 1, 1, 1])
    }

    func testSolution1_IncreasingOrder() {
        let s = P2487_Solution1()
        let head = [1, 2, 3, 4, 5].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [5])
    }

    func testSolution1_DecreasingOrder() {
        let s = P2487_Solution1()
        let head = [5, 4, 3, 2, 1].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [5, 4, 3, 2, 1])
    }

    func testSolution1_SingleNode() {
        let s = P2487_Solution1()
        let head = [1].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [1])
    }

    func testSolution2_Example1() {
        let s = P2487_Solution2()
        let head = [5, 2, 13, 3, 8].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [13, 8])
    }

    func testSolution2_Example2() {
        let s = P2487_Solution2()
        let head = [1, 1, 1, 1].toLinkedList()
        let result = s.removeNodes(head)
        XCTAssertEqual(result?.toArray(), [1, 1, 1, 1])
    }
}
