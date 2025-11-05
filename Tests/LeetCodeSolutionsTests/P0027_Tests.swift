@testable import LeetCodeSolutions
import XCTest

final class P0027_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P0027_Solution1()
        var nums = [3, 2, 2, 3]
        let k = s.removeElement(&nums, 3)
        XCTAssertEqual(k, 2)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 3 })
    }

    func testSolution1_Example2() {
        let s = P0027_Solution1()
        var nums = [0, 1, 2, 2, 3, 0, 4, 2]
        let k = s.removeElement(&nums, 2)
        XCTAssertEqual(k, 5)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 2 })
    }

    func testSolution1_EmptyResult() {
        let s = P0027_Solution1()
        var nums = [1, 1, 1, 1]
        let k = s.removeElement(&nums, 1)
        XCTAssertEqual(k, 0)
    }

    func testSolution1_NoMatch() {
        let s = P0027_Solution1()
        var nums = [1, 2, 3, 4]
        let k = s.removeElement(&nums, 5)
        XCTAssertEqual(k, 4)
    }

    func testSolution3_Example1() {
        let s = P0027_Solution3()
        var nums = [3, 2, 2, 3]
        let k = s.removeElement(&nums, 3)
        XCTAssertEqual(k, 2)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 3 })
    }

    func testSolution3_Example2() {
        let s = P0027_Solution3()
        var nums = [0, 1, 2, 2, 3, 0, 4, 2]
        let k = s.removeElement(&nums, 2)
        XCTAssertEqual(k, 5)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 2 })
    }

    func testSolution4_Example1() {
        let s = P0027_Solution4()
        var nums = [3, 2, 2, 3]
        let k = s.removeElement(&nums, 3)
        XCTAssertEqual(k, 2)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 3 })
    }

    func testSolution4_Example2() {
        let s = P0027_Solution4()
        var nums = [0, 1, 2, 2, 3, 0, 4, 2]
        let k = s.removeElement(&nums, 2)
        XCTAssertEqual(k, 5)
        XCTAssertTrue(nums[0 ..< k].allSatisfy { $0 != 2 })
    }
}
