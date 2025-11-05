@testable import LeetCodeSolutions
import XCTest

final class P3217_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P3217_Solution1()
        let head = [1, 2, 3, 4, 5].toLinkedList()
        let nums = [1, 2, 3]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [4, 5])
    }

    func testSolution1_Example2() {
        let s = P3217_Solution1()
        let head = [1, 2, 1, 2, 1, 2].toLinkedList()
        let nums = [1]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [2, 2, 2])
    }

    func testSolution1_Example3() {
        let s = P3217_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let nums = [5]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [1, 2, 3, 4])
    }

    func testSolution1_RemoveAll() {
        let s = P3217_Solution1()
        let head = [1, 2, 3].toLinkedList()
        let nums = [1, 2, 3]
        let result = s.modifiedList(nums, head)
        XCTAssertNil(result)
    }

    func testSolution1_RemoveHead() {
        let s = P3217_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let nums = [1]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [2, 3, 4])
    }

    func testSolution1_RemoveTail() {
        let s = P3217_Solution1()
        let head = [1, 2, 3, 4].toLinkedList()
        let nums = [4]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [1, 2, 3])
    }

    func testSolution1_SingleNode() {
        let s = P3217_Solution1()
        let head = [1].toLinkedList()
        let nums = [2]
        let result = s.modifiedList(nums, head)
        XCTAssertEqual(result?.toArray(), [1])
    }
}
