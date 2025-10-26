@testable import LeetCodeSolutions
import XCTest

final class P0043_Solution1_Tests: XCTestCase {
    // Test basic multiplication with single digit numbers
    // 测试基本单数字乘法
    func testSingleDigitMultiplication() {
        let s = P0043_Solution1()
        let result = s.multiply("2", "3")
        print("2 * 3 = \(result)")
        XCTAssertEqual(result, "6", "单数字乘法计算错误")
    }

    // Test multiplication with three-digit numbers
    // 测试三位数乘法
    func testThreeDigitMultiplication() {
        let s = P0043_Solution1()
        let result = s.multiply("123", "456")
        print("123 * 456 = \(result)")
        XCTAssertEqual(result, "56088", "三位数乘法计算错误")
    }

    // Test multiplication with zero
    // 测试包含零的乘法
    func testMultiplicationWithZero() {
        let s = P0043_Solution1()
        let result = s.multiply("0", "123")
        print("0 * 123 = \(result)")
        XCTAssertEqual(result, "0", "零乘法计算错误")
    }

    // Test multiplication of two zeros
    // 测试两个零相乘
    func testMultiplicationOfTwoZeros() {
        let s = P0043_Solution1()
        let result = s.multiply("0", "0")
        print("0 * 0 = \(result)")
        XCTAssertEqual(result, "0", "双零乘法计算错误")
    }

    // Test multiplication with one
    // 测试包含一的乘法
    func testMultiplicationWithOne() {
        let s = P0043_Solution1()
        let result = s.multiply("1", "999")
        print("1 * 999 = \(result)")
        XCTAssertEqual(result, "999", "一乘法计算错误")
    }

    // Test multiplication of large numbers
    // 测试大数乘法
    func testLargeNumberMultiplication() {
        let s = P0043_Solution1()
        let result = s.multiply("999", "999")
        print("999 * 999 = \(result)")
        XCTAssertEqual(result, "998001", "大数乘法计算错误")
    }

    // Test multiplication with different length numbers
    // 测试不同长度数字乘法
    func testDifferentLengthMultiplication() {
        let s = P0043_Solution1()
        let result = s.multiply("12", "345")
        print("12 * 345 = \(result)")
        XCTAssertEqual(result, "4140", "不同长度数字乘法计算错误")
    }

    // Test multiplication with numbers having zeros in middle
    // 测试中间有零的数字乘法
    func testMultiplicationWithZerosInMiddle() {
        let s = P0043_Solution1()
        let result = s.multiply("101", "202")
        print("101 * 202 = \(result)")
        XCTAssertEqual(result, "20402", "中间有零的数字乘法计算错误")
    }

    // Test multiplication with maximum constraint numbers
    // 测试边界情况大数乘法
    func testMaximumConstraintMultiplication() {
        let s = P0043_Solution1()
        let num1 = String(repeating: "9", count: 200)
        let num2 = String(repeating: "9", count: 200)
        let result = s.multiply(num1, num2)
        print("200位9 * 200位9 结果长度: \(result.count)")
        XCTAssertEqual(result.count, 400, "边界大数乘法结果长度错误")
    }

    // Test multiplication with numbers ending with zeros
    // 测试以零结尾的数字乘法
    func testMultiplicationWithTrailingZeros() {
        let s = P0043_Solution1()
        let result = s.multiply("100", "200")
        print("100 * 200 = \(result)")
        XCTAssertEqual(result, "20000", "以零结尾的数字乘法计算错误")
    }

    // Test multiplication performance with large numbers
    // 测试大数乘法性能
    func testLargeNumberMultiplicationPerformance() {
        let s = P0043_Solution1()
        let num1 = String(repeating: "9", count: 150)
        let num2 = String(repeating: "9", count: 150)

        measure {
            let result = s.multiply(num1, num2)
            print("性能测试结果长度: \(result.count)")
        }
    }

    // Test multiplication with numbers starting with different digits
    // 测试不同起始数字的乘法
    func testDifferentStartingDigits() {
        let s = P0043_Solution1()
        let result = s.multiply("789", "456")
        print("789 * 456 = \(result)")
        XCTAssertEqual(result, "359784", "不同起始数字乘法计算错误")
    }

    // Test multiplication with palindrome numbers
    // 测试回文数字乘法
    func testPalindromeNumberMultiplication() {
        let s = P0043_Solution1()
        let result = s.multiply("121", "121")
        print("121 * 121 = \(result)")
        XCTAssertEqual(result, "14641", "回文数字乘法计算错误")
    }
}
