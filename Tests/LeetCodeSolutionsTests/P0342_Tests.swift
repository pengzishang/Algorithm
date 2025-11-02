@testable import LeetCodeSolutions
import XCTest

final class P0342_Solution1_Tests: XCTestCase {
    let solution = P0342_Solution1()

    // Test case 1: 16 is a power of four / 16是4的幂
    func testIsPowerOfFour_16_Example1() {
        let n = 16
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "16 should be a power of four")
    }

    // Test case 2: 5 is not a power of four / 5不是4的幂
    func testIsPowerOfFour_5_Example2() {
        let n = 5
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "5 should not be a power of four")
    }

    // Test case 3: 1 is a power of four / 1是4的幂
    func testIsPowerOfFour_1_Example3() {
        let n = 1
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1 should be a power of four")
    }

    // Test case 4: 0 is not a power of four / 0不是4的幂
    func testIsPowerOfFour_0_EdgeCase() {
        let n = 0
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "0 should not be a power of four")
    }

    // Test case 5: 4 is a power of four / 4是4的幂
    func testIsPowerOfFour_4_ValidCase() {
        let n = 4
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "4 should be a power of four")
    }

    // Test case 6: 64 is a power of four / 64是4的幂
    func testIsPowerOfFour_64_ValidCase() {
        let n = 64
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "64 should be a power of four")
    }

    // Test case 7: 256 is a power of four / 256是4的幂
    func testIsPowerOfFour_256_ValidCase() {
        let n = 256
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "256 should be a power of four")
    }

    // Test case 8: 1024 is a power of four / 1024是4的幂
    func testIsPowerOfFour_1024_ValidCase() {
        let n = 1024
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1024 should be a power of four")
    }

    // Test case 9: 2 is not a power of four / 2不是4的幂
    func testIsPowerOfFour_2_InvalidCase() {
        let n = 2
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "2 should not be a power of four")
    }

    // Test case 10: 8 is not a power of four / 8不是4的幂
    func testIsPowerOfFour_8_InvalidCase() {
        let n = 8
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "8 should not be a power of four")
    }

    // Test case 11: 12 is not a power of four / 12不是4的幂
    func testIsPowerOfFour_12_InvalidCase() {
        let n = 12
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "12 should not be a power of four")
    }

    // Test case 12: Negative number test / 负数测试
    func testIsPowerOfFour_Negative_EdgeCase() {
        let n = -16
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers should not be powers of four")
    }

    // Test case 13: Maximum power of four within Int32 range / Int32范围内最大的4的幂
    func testIsPowerOfFour_MaxPower_EdgeCase() {
        let n = 1_073_741_824 // 4^15
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1073741824 should be a power of four")
    }

    // Test case 14: Large number that is not power of four / 大数但不是4的幂
    func testIsPowerOfFour_LargeInvalid_EdgeCase() {
        let n = 1_073_741_825
        let result = solution.isPowerOfFour(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "1073741825 should not be a power of four")
    }

    // Test case 15: Performance test with maximum value / 最大值性能测试
    func testIsPowerOfFour_MaxInt_Performance() {
        let n = Int(Int32.max)
        measure {
            let result = solution.isPowerOfFour(n)
            print("Performance test - Input: \(n), Output: \(result)")
            XCTAssertEqual(result, false, "Int32.max should not be a power of four")
        }
    }
}
