@testable import LeetCodeSolutions
import XCTest

final class P0283_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P0283_Solution1()
        var nums = [0, 1, 0, 3, 12]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 3, 12, 0, 0])
    }

    func testSolution1_Example2() {
        let s = P0283_Solution1()
        var nums = [0]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [0])
    }

    func testSolution1_NoZeros() {
        let s = P0283_Solution1()
        var nums = [1, 2, 3, 4, 5]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 2, 3, 4, 5])
    }

    func testSolution1_AllZeros() {
        let s = P0283_Solution1()
        var nums = [0, 0, 0, 0]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [0, 0, 0, 0])
    }

    func testSolution1_ZerosAtEnd() {
        let s = P0283_Solution1()
        var nums = [1, 2, 3, 0, 0]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 2, 3, 0, 0])
    }

    func testSolution1_ZerosAtBeginning() {
        let s = P0283_Solution1()
        var nums = [0, 0, 1, 2, 3]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 2, 3, 0, 0])
    }

    func testSolution2_Example1() {
        let s = P0283_Solution2()
        var nums = [0, 1, 0, 3, 12]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 3, 12, 0, 0])
    }

    func testSolution2_Example2() {
        let s = P0283_Solution2()
        var nums = [0]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [0])
    }

    func testSolution3_Example1() {
        let s = P0283_Solution3()
        var nums = [0, 1, 0, 3, 12]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 3, 12, 0, 0])
    }

    func testSolution3_Example2() {
        let s = P0283_Solution3()
        var nums = [0]
        s.moveZeroes(&nums)
        XCTAssertEqual(nums, [0])
    }
}
