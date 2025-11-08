@testable import LeetCodeSolutions
import XCTest

final class P1317_Solution1_Tests: XCTestCase {
    // Test case from example 1.
    // 示例 1 中的测试用例。
    func testExample1() {
        let s = P1317_Solution1()
        let n = 2
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Test case from example 2.
    // 示例 2 中的测试用例。
    func testExample2() {
        let s = P1317_Solution1()
        let n = 11
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Test case from example 3.
    // 示例 3 中的测试用例。
    func testExample3() {
        let s = P1317_Solution1()
        let n = 10000
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Test case from example 4.
    // 示例 4 中的测试用例。
    func testExample4() {
        let s = P1317_Solution1()
        let n = 69
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Test case from example 5.
    // 示例 5 中的测试用例。
    func testExample5() {
        let s = P1317_Solution1()
        let n = 1010
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a simple case n = 3.
    // 额外测试简单案例 n = 3。
    func testSimpleCaseN3() {
        let s = P1317_Solution1()
        let n = 3
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a simple case n = 4.
    // 额外测试简单案例 n = 4。
    func testSimpleCaseN4() {
        let s = P1317_Solution1()
        let n = 4
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n ends in 0.
    // 额外测试 n 以 0 结尾的情况。
    func testNEndsWithZeroN10() {
        let s = P1317_Solution1()
        let n = 10
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a simple two-digit number n = 12.
    // 额外测试简单的两位数 n = 12。
    func testTwoDigitN12() {
        let s = P1317_Solution1()
        let n = 12
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a simple two-digit number n = 19.
    // 额外测试简单的两位数 n = 19。
    func testTwoDigitN19() {
        let s = P1317_Solution1()
        let n = 19
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n ends in 0.
    // 额外测试 n 以 0 结尾的情况。
    func testNEndsWithZeroN20() {
        let s = P1317_Solution1()
        let n = 20
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for n = 21, where (1, n-1) is not a valid solution.
    // 额外测试 n = 21, 此时 (1, n-1) 不是一个有效的解。
    func testSplitRequiresNonOneN21() {
        let s = P1317_Solution1()
        let n = 21
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for n = 88.
    // 额外测试 n = 88。
    func testTwoDigitN88() {
        let s = P1317_Solution1()
        let n = 88
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for n = 99.
    // 额外测试 n = 99。
    func testTwoDigitN99() {
        let s = P1317_Solution1()
        let n = 99
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n contains zeros.
    // 额外测试 n 包含 0 的情况。
    func testNWithZerosN100() {
        let s = P1317_Solution1()
        let n = 100
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n contains a zero in the middle.
    // 额外测试 n 中间包含 0 的情况。
    func testNWithMiddleZeroN101() {
        let s = P1317_Solution1()
        let n = 101
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test with repetitive digits.
    // 额外测试包含重复数字的情况。
    func testRepetitiveDigitsN111() {
        let s = P1317_Solution1()
        let n = 111
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a normal three-digit number.
    // 额外测试一个普通的三位数。
    func testThreeDigitN432() {
        let s = P1317_Solution1()
        let n = 432
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a number full of 9s.
    // 额外测试一个全是9的数字。
    func testAllNinesN999() {
        let s = P1317_Solution1()
        let n = 999
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n contains zeros in the middle.
    // 额外测试 n 中间包含 0 的情况。
    func testNWithMiddleZerosN1001() {
        let s = P1317_Solution1()
        let n = 1001
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a normal four-digit number.
    // 额外测试一个普通的四位数。
    func testFourDigitN1999() {
        let s = P1317_Solution1()
        let n = 1999
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n contains multiple zeros.
    // 额外测试 n 包含多个 0 的情况。
    func testNWithMultipleZerosN2000() {
        let s = P1317_Solution1()
        let n = 2000
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test where n contains a zero.
    // 额外测试 n 包含 0 的情况。
    func testNWithZeroN2023() {
        let s = P1317_Solution1()
        let n = 2023
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test with a palindrome number containing zeros.
    // 额外测试一个包含零的回文数。
    func testPalindromeWithZerosN8008() {
        let s = P1317_Solution1()
        let n = 8008
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test with a number containing multiple zeros.
    // 额外测试一个包含多个零的数字。
    func testMultipleZerosN9090() {
        let s = P1317_Solution1()
        let n = 9090
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a number full of 9s close to the boundary.
    // 额外测试一个接近边界且全是9的数字。
    func testAllNinesN9999() {
        let s = P1317_Solution1()
        let n = 9999
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for n = 40.
    // 额外测试 n = 40。
    func testNEndsWithZeroN40() {
        let s = P1317_Solution1()
        let n = 40
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for n = 102.
    // 额外测试 n = 102。
    func testNWithMiddleZeroN102() {
        let s = P1317_Solution1()
        let n = 102
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }

    // Additional test for a large number n = 8888.
    // 额外测试一个较大的数字 n = 8888。
    func testLargeNumberN8888() {
        let s = P1317_Solution1()
        let n = 8888
        let result = s.getNoZeroIntegers(n)
        print(result)
        XCTAssertEqual(result.count, 2,
                       "For n=\(n), the result must be an array of two integers. / 对于n=\(n)，结果必须是一个包含两个整数的数组。")
        guard result.count == 2 else { return }
        XCTAssertFalse(String(result[0]).contains("0"),
                       "For n=\(n), the first number \(result[0]) should not contain zero. / 对于n=\(n)，第一个数字 \(result[0]) 不应包含0。")
        XCTAssertFalse(String(result[1]).contains("0"),
                       "For n=\(n), the second number \(result[1]) should not contain zero. / 对于n=\(n)，第二个数字 \(result[1]) 不应包含0。")
        XCTAssertEqual(result[0] + result[1], n,
                       "For n=\(n), the sum of the two numbers must be \(n). / 对于n=\(n)，两个数字的和必须等于\(n)。")
    }
}
