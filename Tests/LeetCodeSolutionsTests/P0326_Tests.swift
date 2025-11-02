@testable import LeetCodeSolutions
import XCTest

final class P0326_Solution1_Tests: XCTestCase {
    let solution = P0326_Solution1()

    // Test case 1: 27 is a power of three (3^3)
    // 测试用例1: 27是3的幂 (3^3)
    func testPowerOfThree_27() {
        let result = solution.isPowerOfThree(27)
        print("Input: 27, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "27 should be a power of three (3^3)")
    }

    // Test case 2: 0 is not a power of three
    // 测试用例2: 0不是3的幂
    func testPowerOfThree_0() {
        let result = solution.isPowerOfThree(0)
        print("Input: 0, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "0 should not be a power of three")
    }

    // Test case 3: 9 is a power of three (3^2)
    // 测试用例3: 9是3的幂 (3^2)
    func testPowerOfThree_9() {
        let result = solution.isPowerOfThree(9)
        print("Input: 9, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "9 should be a power of three (3^2)")
    }

    // Test case 4: 45 is not a power of three
    // 测试用例4: 45不是3的幂
    func testPowerOfThree_45() {
        let result = solution.isPowerOfThree(45)
        print("Input: 45, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "45 should not be a power of three")
    }

    // Test case 5: -1 is not a power of three
    // 测试用例5: -1不是3的幂
    func testPowerOfThree_Negative1() {
        let result = solution.isPowerOfThree(-1)
        print("Input: -1, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "-1 should not be a power of three")
    }

    // Test case 6: 1 is a power of three (3^0)
    // 测试用例6: 1是3的幂 (3^0)
    func testPowerOfThree_1() {
        let result = solution.isPowerOfThree(1)
        print("Input: 1, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "1 should be a power of three (3^0)")
    }

    // Test case 7: 3 is a power of three (3^1)
    // 测试用例7: 3是3的幂 (3^1)
    func testPowerOfThree_3() {
        let result = solution.isPowerOfThree(3)
        print("Input: 3, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "3 should be a power of three (3^1)")
    }

    // Test case 8: 81 is a power of three (3^4)
    // 测试用例8: 81是3的幂 (3^4)
    func testPowerOfThree_81() {
        let result = solution.isPowerOfThree(81)
        print("Input: 81, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "81 should be a power of three (3^4)")
    }

    // Test case 9: 2 is not a power of three
    // 测试用例9: 2不是3的幂
    func testPowerOfThree_2() {
        let result = solution.isPowerOfThree(2)
        print("Input: 2, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "2 should not be a power of three")
    }

    // Test case 10: 10 is not a power of three
    // 测试用例10: 10不是3的幂
    func testPowerOfThree_10() {
        let result = solution.isPowerOfThree(10)
        print("Input: 10, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "10 should not be a power of three")
    }

    // Test case 11: 19683 is a power of three (3^9)
    // 测试用例11: 19683是3的幂 (3^9)
    func testPowerOfThree_19683() {
        let result = solution.isPowerOfThree(19683)
        print("Input: 19683, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "19683 should be a power of three (3^9)")
    }

    // Test case 12: 100 is not a power of three
    // 测试用例12: 100不是3的幂
    func testPowerOfThree_100() {
        let result = solution.isPowerOfThree(100)
        print("Input: 100, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "100 should not be a power of three")
    }

    // Test case 13: 1162261467 is a power of three (3^19)
    // 测试用例13: 1162261467是3的幂 (3^19)
    func testPowerOfThree_1162261467() {
        let result = solution.isPowerOfThree(1_162_261_467)
        print("Input: 1162261467, Output: \(result)") // Expected: true
        XCTAssertEqual(result, true, "1162261467 should be a power of three (3^19)")
    }

    // Test case 14: -27 is not a power of three
    // 测试用例14: -27不是3的幂
    func testPowerOfThree_Negative27() {
        let result = solution.isPowerOfThree(-27)
        print("Input: -27, Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "-27 should not be a power of three")
    }

    // Test case 15: Maximum integer value is not a power of three
    // 测试用例15: 最大整数值不是3的幂
    func testPowerOfThree_MaxInt() {
        let result = solution.isPowerOfThree(Int(Int32.max))
        print("Input: \(Int32.max), Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "Maximum integer value should not be a power of three")
    }

    // Test case 16: Minimum integer value is not a power of three
    // 测试用例16: 最小整数值不是3的幂
    func testPowerOfThree_MinInt() {
        let result = solution.isPowerOfThree(Int(Int32.min))
        print("Input: \(Int32.min), Output: \(result)") // Expected: false
        XCTAssertEqual(result, false, "Minimum integer value should not be a power of three")
    }
}
