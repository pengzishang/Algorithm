@testable import LeetCodeSolutions
import XCTest

final class P0026_Tests: XCTestCase {
    func testSolution1_Example1() {
        let s = P0026_Solution1()
        var nums = [1, 1, 2]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 2)
        XCTAssertEqual(Array(nums[0 ..< k]), [1, 2])
    }

    func testSolution1_Example2() {
        let s = P0026_Solution1()
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 5)
        XCTAssertEqual(Array(nums[0 ..< k]), [0, 1, 2, 3, 4])
    }

    func testSolution1_SingleElement() {
        let s = P0026_Solution1()
        var nums = [1]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 1)
        XCTAssertEqual(Array(nums[0 ..< k]), [1])
    }

    func testSolution1_NoDuplicates() {
        let s = P0026_Solution1()
        var nums = [1, 2, 3, 4, 5]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 5)
        XCTAssertEqual(Array(nums[0 ..< k]), [1, 2, 3, 4, 5])
    }

    func testSolution1_AllSame() {
        let s = P0026_Solution1()
        var nums = [1, 1, 1, 1, 1]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 1)
        XCTAssertEqual(Array(nums[0 ..< k]), [1])
    }

    func testSolution2_Example1() {
        let s = P0026_Solution2()
        var nums = [1, 1, 2]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 2)
        XCTAssertEqual(Array(nums[0 ..< k]), [1, 2])
    }

    func testSolution2_Example2() {
        let s = P0026_Solution2()
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 5)
        XCTAssertEqual(Array(nums[0 ..< k]), [0, 1, 2, 3, 4])
    }

    func testSolution3_Example1() {
        let s = P0026_Solution3()
        var nums = [1, 1, 2]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 2)
        XCTAssertEqual(Array(nums[0 ..< k]), [1, 2])
    }

    func testSolution3_Example2() {
        let s = P0026_Solution3()
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let k = s.removeDuplicates(&nums)
        XCTAssertEqual(k, 5)
        XCTAssertEqual(Array(nums[0 ..< k]), [0, 1, 2, 3, 4])
    }
}
