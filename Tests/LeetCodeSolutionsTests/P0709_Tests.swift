@testable import LeetCodeSolutions
import XCTest

final class P0709_Solution1_Tests: XCTestCase {
    let solution = P0709_Solution1()

    // Test case 1: Basic mixed case
    // 测试用例1: 基础混合大小写
    func testMixedCase_1() {
        let input = "Hello"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "hello", "Failed to convert mixed case string to lowercase")
    }

    // Test case 2: All lowercase
    // 测试用例2: 全小写字母
    func testAllLowercase_2() {
        let input = "here"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "here", "Failed to handle all lowercase string")
    }

    // Test case 3: All uppercase
    // 测试用例3: 全大写字母
    func testAllUppercase_3() {
        let input = "LOVELY"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "lovely", "Failed to convert all uppercase string to lowercase")
    }

    // Test case 4: Empty string
    // 测试用例4: 空字符串
    func testEmptyString_4() {
        let input = ""
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "", "Failed to handle empty string")
    }

    // Test case 5: String with numbers and symbols
    // 测试用例5: 包含数字和符号的字符串
    func testNumbersAndSymbols_5() {
        let input = "Hello123!@#"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "hello123!@#", "Failed to handle string with numbers and symbols")
    }

    // Test case 6: Single uppercase letter
    // 测试用例6: 单个大写字母
    func testSingleUppercase_6() {
        let input = "A"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "a", "Failed to convert single uppercase letter")
    }

    // Test case 7: Single lowercase letter
    // 测试用例7: 单个小写字母
    func testSingleLowercase_7() {
        let input = "z"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "z", "Failed to handle single lowercase letter")
    }

    // Test case 8: Mixed case with spaces
    // 测试用例8: 包含空格的混合大小写
    func testMixedWithSpaces_8() {
        let input = "Hello World"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "hello world", "Failed to handle string with spaces")
    }

    // Test case 9: All uppercase with numbers
    // 测试用例9: 包含数字的全大写
    func testUppercaseWithNumbers_9() {
        let input = "ABC123XYZ"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "abc123xyz", "Failed to handle uppercase with numbers")
    }

    // Test case 10: String with special characters only
    // 测试用例10: 只有特殊字符
    func testSpecialCharactersOnly_10() {
        let input = "!@#$%^&*()"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "!@#$%^&*()", "Failed to handle special characters only")
    }

    // Test case 11: Long string with mixed case
    // 测试用例11: 长字符串混合大小写
    func testLongMixedString_11() {
        let input = "AbCdEfGhIjKlMnOpQrStUvWxYz"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "abcdefghijklmnopqrstuvwxyz", "Failed to handle long mixed case string")
    }

    // Test case 12: Maximum length string (100 characters)
    // 测试用例12: 最大长度字符串(100字符)
    func testMaximumLengthString_12() {
        let input = String(repeating: "AbC", count: 34) // 102 characters, trim to 100
        let truncatedInput = String(input.prefix(100))
        let result = solution.toLowerCase(truncatedInput)
        print("Input length: \(truncatedInput.count), Output length: \(result.count)")
        XCTAssertEqual(result.count, 100, "Failed to handle maximum length string")
    }

    // Test case 13: String with unicode characters
    // 测试用例13: 包含Unicode字符的字符串
    func testUnicodeCharacters_13() {
        let input = "Hello 世界 ABC"
        let result = solution.toLowerCase(input)
        print("Input: \(input), Output: \(result)")
        XCTAssertEqual(result, "hello 世界 abc", "Failed to handle string with unicode characters")
    }

    // Test case 14: Performance test with large string
    // 测试用例14: 大字符串性能测试
    func testPerformance_14() {
        let longString = String(repeating: "AbCdEfGhIjKlMnOpQrStUvWxYz", count: 100)
        measure {
            _ = solution.toLowerCase(longString)
        }
        let result = solution.toLowerCase(longString)
        print("Performance test completed, result length: \(result.count)")
    }
}
