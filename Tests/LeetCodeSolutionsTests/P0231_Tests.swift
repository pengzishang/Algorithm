@testable import LeetCodeSolutions
import XCTest

final class P0231_Solution1_Tests: XCTestCase {
    let solution = P0231_Solution1()

    // Test case 1: n = 1 (2^0)
    // 测试用例1: n = 1 (2^0)
    func testPowerOfTwo_1() {
        let n = 1
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1 should be a power of two (2^0)")
    }

    // Test case 2: n = 16 (2^4)
    // 测试用例2: n = 16 (2^4)
    func testPowerOfTwo_2() {
        let n = 16
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "16 should be a power of two (2^4)")
    }

    // Test case 3: n = 3 (not power of two)
    // 测试用例3: n = 3 (不是2的幂)
    func testPowerOfTwo_3() {
        let n = 3
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "3 should not be a power of two")
    }

    // Test case 4: n = 0 (edge case)
    // 测试用例4: n = 0 (边界情况)
    func testPowerOfTwo_4() {
        let n = 0
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "0 should not be a power of two")
    }

    // Test case 5: n = -2 (negative number)
    // 测试用例5: n = -2 (负数)
    func testPowerOfTwo_5() {
        let n = -2
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers cannot be powers of two")
    }

    // Test case 6: n = 1073741824 (2^30)
    // 测试用例6: n = 1073741824 (2^30)
    func testPowerOfTwo_6() {
        let n = 1_073_741_824
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1073741824 should be a power of two (2^30)")
    }

    // Test case 7: n = 2147483647 (Int32.max)
    // 测试用例7: n = 2147483647 (Int32最大值)
    func testPowerOfTwo_7() {
        let n = 2_147_483_647
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "2147483647 should not be a power of two")
    }

    // Test case 8: n = -2147483648 (Int32.min)
    // 测试用例8: n = -2147483648 (Int32最小值)
    func testPowerOfTwo_8() {
        let n = -2_147_483_648
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers cannot be powers of two")
    }

    // Test case 9: n = 1024 (2^10)
    // 测试用例9: n = 1024 (2^10)
    func testPowerOfTwo_9() {
        let n = 1024
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1024 should be a power of two (2^10)")
    }

    // Test case 10: n = 1023 (1024-1)
    // 测试用例10: n = 1023 (1024-1)
    func testPowerOfTwo_10() {
        let n = 1023
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "1023 should not be a power of two")
    }

    // Test case 11: n = 536870912 (2^29)
    // 测试用例11: n = 536870912 (2^29)
    func testPowerOfTwo_11() {
        let n = 536_870_912
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "536870912 should be a power of two (2^29)")
    }

    // Test case 12: n = 536870913 (2^29 + 1)
    // 测试用例12: n = 536870913 (2^29 + 1)
    func testPowerOfTwo_12() {
        let n = 536_870_913
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "536870913 should not be a power of two")
    }

    // Test case 13: n = 2 (2^1)
    // 测试用例13: n = 2 (2^1)
    func testPowerOfTwo_13() {
        let n = 2
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "2 should be a power of two (2^1)")
    }

    // Test case 14: Performance test with large power of two
    // 测试用例14: 大数性能测试 (2的幂)
    func testPowerOfTwo_Performance_LargePower() {
        let n = 1 << 30 // 2^30
        measure {
            let result = solution.isPowerOfTwo(n)
            XCTAssertEqual(result, true)
        }
        print("Performance test completed for large power of two: \(n)")
    }

    // Test case 15: Performance test with large non-power of two
    // 测试用例15: 大数性能测试 (非2的幂)
    func testPowerOfTwo_Performance_LargeNonPower() {
        let n = (1 << 30) - 1 // 2^30 - 1
        measure {
            let result = solution.isPowerOfTwo(n)
            XCTAssertEqual(result, false)
        }
        print("Performance test completed for large non-power of two: \(n)")
    }
}

final class P0231_Solution2_Tests: XCTestCase {
    let solution = P0231_Solution2()

    // Test case 1: n = 1 (2^0)
    // 测试用例1: n = 1 (2^0)
    func testPowerOfTwo_1() {
        let n = 1
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1 should be a power of two (2^0)")
    }

    // Test case 2: n = 16 (2^4)
    // 测试用例2: n = 16 (2^4)
    func testPowerOfTwo_2() {
        let n = 16
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "16 should be a power of two (2^4)")
    }

    // Test case 3: n = 3 (not power of two)
    // 测试用例3: n = 3 (不是2的幂)
    func testPowerOfTwo_3() {
        let n = 3
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "3 should not be a power of two")
    }

    // Test case 4: n = 0 (edge case)
    // 测试用例4: n = 0 (边界情况)
    func testPowerOfTwo_4() {
        let n = 0
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "0 should not be a power of two")
    }

    // Test case 5: n = -2 (negative number)
    // 测试用例5: n = -2 (负数)
    func testPowerOfTwo_5() {
        let n = -2
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers cannot be powers of two")
    }

    // Test case 6: n = 1073741824 (2^30)
    // 测试用例6: n = 1073741824 (2^30)
    func testPowerOfTwo_6() {
        let n = 1_073_741_824
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1073741824 should be a power of two (2^30)")
    }

    // Test case 7: n = 2147483647 (Int32.max)
    // 测试用例7: n = 2147483647 (Int32最大值)
    func testPowerOfTwo_7() {
        let n = 2_147_483_647
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "2147483647 should not be a power of two")
    }

    // Test case 8: n = -2147483648 (Int32.min)
    // 测试用例8: n = -2147483648 (Int32最小值)
    func testPowerOfTwo_8() {
        let n = -2_147_483_648
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers cannot be powers of two")
    }

    // Test case 9: n = 1024 (2^10)
    // 测试用例9: n = 1024 (2^10)
    func testPowerOfTwo_9() {
        let n = 1024
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1024 should be a power of two (2^10)")
    }

    // Test case 10: n = 1023 (1024-1)
    // 测试用例10: n = 1023 (1024-1)
    func testPowerOfTwo_10() {
        let n = 1023
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "1023 should not be a power of two")
    }

    // Test case 11: n = 536870912 (2^29)
    // 测试用例11: n = 536870912 (2^29)
    func testPowerOfTwo_11() {
        let n = 536_870_912
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "536870912 should be a power of two (2^29)")
    }

    // Test case 12: n = 536870913 (2^29 + 1)
    // 测试用例12: n = 536870913 (2^29 + 1)
    func testPowerOfTwo_12() {
        let n = 536_870_913
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, false, "536870913 should not be a power of two")
    }

    // Test case 13: n = 2 (2^1)
    // 测试用例13: n = 2 (2^1)
    func testPowerOfTwo_13() {
        let n = 2
        let result = solution.isPowerOfTwo(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, true, "2 should be a power of two (2^1)")
    }

    // Test case 14: Performance test with large power of two
    // 测试用例14: 大数性能测试 (2的幂)
    func testPowerOfTwo_Performance_LargePower() {
        let n = 1 << 30 // 2^30
        measure {
            let result = solution.isPowerOfTwo(n)
            XCTAssertEqual(result, true)
        }
        print("Performance test completed for large power of two: \(n)")
    }

    // Test case 15: Performance test with large non-power of two
    // 测试用例15: 大数性能测试 (非2的幂)
    func testPowerOfTwo_Performance_LargeNonPower() {
        let n = (1 << 30) - 1 // 2^30 - 1
        measure {
            let result = solution.isPowerOfTwo(n)
            XCTAssertEqual(result, false)
        }
        print("Performance test completed for large non-power of two: \(n)")
    }
}
