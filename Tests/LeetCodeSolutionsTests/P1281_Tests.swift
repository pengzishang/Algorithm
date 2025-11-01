@testable import LeetCodeSolutions
import XCTest

final class P1281_Solution1_Tests: XCTestCase {
    // Test case 1: 示例1 - Example 1
    func testExample1() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(234)
        print("Input: 234, Output: \(result)")
        XCTAssertEqual(result, 15, "234的各位积(24)与和(9)之差应为15")
    }

    // Test case 2: 示例2 - Example 2
    func testExample2() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(4421)
        print("Input: 4421, Output: \(result)")
        XCTAssertEqual(result, 21, "4421的各位积(32)与和(11)之差应为21")
    }

    // Test case 3: 一位数 - Single digit
    func testSingleDigit() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(5)
        print("Input: 5, Output: \(result)")
        XCTAssertEqual(result, 0, "5的各位积(5)与和(5)之差应为0")
    }

    // Test case 4: 包含0的数字 - Number containing zero
    func testNumberWithZero() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(102)
        print("Input: 102, Output: \(result)")
        XCTAssertEqual(result, -3, "102的各位积(0)与和(3)之差应为-3")
    }

    // Test case 5: 最小边界值 - Minimum boundary value
    func testMinimumValue() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(1)
        print("Input: 1, Output: \(result)")
        XCTAssertEqual(result, 0, "1的各位积(1)与和(1)之差应为0")
    }

    // Test case 6: 最大边界值 - Maximum boundary value
    func testMaximumValue() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(100_000)
        print("Input: 100000, Output: \(result)")
        XCTAssertEqual(result, -1, "100000的各位积(0)与和(1)之差应为-1")
    }

    // Test case 7: 所有数字相同 - All digits same
    func testAllDigitsSame() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(777)
        print("Input: 777, Output: \(result)")
        XCTAssertEqual(result, 322, "777的各位积(343)与和(21)之差应为322")
    }

    // Test case 8: 包含多个0 - Multiple zeros
    func testMultipleZeros() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(10010)
        print("Input: 10010, Output: \(result)")
        XCTAssertEqual(result, -2, "10010的各位积(0)与和(2)之差应为-2")
    }

    // Test case 9: 大数字测试 - Large number test
    func testLargeNumber() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(98765)
        print("Input: 98765, Output: \(result)")
        XCTAssertEqual(result, 15085, "98765的各位积(15120)与和(35)之差应为15085")
    }

    // Test case 10: 随机测试 - Random test
    func testRandomNumber() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(12345)
        print("Input: 12345, Output: \(result)")
        XCTAssertEqual(result, 105, "12345的各位积(120)与和(15)之差应为105")
    }

    // Test case 11: 性能测试 - Performance test
    func testPerformance() {
        let s = P1281_Solution1()
        measure {
            _ = s.subtractProductAndSum(99999)
        }
        let result = s.subtractProductAndSum(99999)
        print("Input: 99999, Output: \(result)")
        XCTAssertEqual(result, 59004, "99999的各位积(59049)与和(45)之差应为59004")
    }

    // Test case 12: 包含1的数字 - Number containing ones
    func testNumberWithOnes() {
        let s = P1281_Solution1()
        let result = s.subtractProductAndSum(11111)
        print("Input: 11111, Output: \(result)")
        XCTAssertEqual(result, -4, "11111的各位积(1)与和(5)之差应为-4")
    }
}
