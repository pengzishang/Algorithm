@testable import LeetCodeSolutions
import XCTest

final class P2460_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P2460_Solution1()
        let nums = [1, 2, 2, 1, 1, 0]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [1, 4, 2, 0, 0, 0])
    }

    func testSolution1_Example2() {
        let s = P2460_Solution1()
        let nums = [0, 1]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [1, 0])
    }

    func testSolution1_NoOperations() {
        let s = P2460_Solution1()
        let nums = [1, 2, 3, 4]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }

    func testSolution1_AllZeros() {
        let s = P2460_Solution1()
        let nums = [0, 0, 0, 0]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [0, 0, 0, 0])
    }

    func testSolution1_MultipleDoubles() {
        let s = P2460_Solution1()
        let nums = [2, 2, 3, 3]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [4, 6, 0, 0])
    }

    func testSolution1_SingleElement() {
        let s = P2460_Solution1()
        let nums = [5]
        let result = s.applyOperations(nums)
        XCTAssertEqual(result, [5])
    }
}
