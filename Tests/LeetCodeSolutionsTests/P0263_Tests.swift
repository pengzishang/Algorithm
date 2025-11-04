import XCTest
@testable import LeetCodeSolutions

final class P0263_Solution1_Tests: XCTestCase {
    let solution = P0263_Solution1()
    
    // Test case 1: 6 is an ugly number / 6是丑数
    func testIsUglyNumber_6() {
        let n = 6
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "6 should be an ugly number")
    }
    
    // Test case 2: 1 is an ugly number / 1是丑数
    func testIsUglyNumber_1() {
        let n = 1
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "1 should be an ugly number")
    }
    
    // Test case 3: 14 is not an ugly number / 14不是丑数
    func testIsUglyNumber_14() {
        let n = 14
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "14 should not be an ugly number")
    }
    
    // Test case 4: 8 is an ugly number / 8是丑数
    func testIsUglyNumber_8() {
        let n = 8
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "8 should be an ugly number")
    }
    
    // Test case 5: 15 is an ugly number / 15是丑数
    func testIsUglyNumber_15() {
        let n = 15
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "15 should be an ugly number")
    }
    
    // Test case 6: 7 is not an ugly number / 7不是丑数
    func testIsUglyNumber_7() {
        let n = 7
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "7 should not be an ugly number")
    }
    
    // Test case 7: 0 is not an ugly number / 0不是丑数
    func testIsUglyNumber_0() {
        let n = 0
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "0 should not be an ugly number")
    }
    
    // Test case 8: Negative number is not an ugly number / 负数不是丑数
    func testIsUglyNumber_Negative() {
        let n = -6
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Negative numbers should not be ugly numbers")
    }
    
    // Test case 9: Large ugly number / 大丑数
    func testIsUglyNumber_LargeUgly() {
        let n = 2147483645
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Large number should be handled correctly")
    }
    
    // Test case 10: Prime number 11 is not ugly / 质数11不是丑数
    func testIsUglyNumber_11() {
        let n = 11
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "11 should not be an ugly number")
    }
    
    // Test case 11: 30 is an ugly number / 30是丑数
    func testIsUglyNumber_30() {
        let n = 30
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "30 should be an ugly number")
    }
    
    // Test case 12: 49 is not an ugly number / 49不是丑数
    func testIsUglyNumber_49() {
        let n = 49
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "49 should not be an ugly number")
    }
    
    // Test case 13: Maximum integer value / 最大整数值
    func testIsUglyNumber_MaxInt() {
        let n = 2147483647
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Max int should be handled correctly")
    }
    
    // Test case 14: Minimum integer value / 最小整数值
    func testIsUglyNumber_MinInt() {
        let n = -2147483648
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, false, "Min int should be handled correctly")
    }
    
    // Test case 15: 60 is an ugly number / 60是丑数
    func testIsUglyNumber_60() {
        let n = 60
        let result = solution.isUgly(n)
        print("Input: \(n), Output: \(result)")
        XCTAssertEqual(result, true, "60 should be an ugly number")
    }
}