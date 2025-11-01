@testable import LeetCodeSolutions
import XCTest

final class P0258_Solution1_Tests: XCTestCase {
    let solution = P0258_Solution1()

    // Test case 1: Basic example
    // 测试用例1：基础示例
    func testAddDigits_BasicExample1() {
        let num = 38
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 2, "38 should reduce to 2 through digit sum: 3+8=11, 1+1=2")
    }

    // Test case 2: Zero input
    // 测试用例2：输入为0
    func testAddDigits_ZeroInput() {
        let num = 0
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 0, "0 should remain 0")
    }

    // Test case 3: Single digit number
    // 测试用例3：个位数
    func testAddDigits_SingleDigit() {
        let num = 5
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 5, "Single digit 5 should remain 5")
    }

    // Test case 4: Two-digit number that sums to single digit
    // 测试用例4：两位数相加得到个位数
    func testAddDigits_TwoDigitsToSingle() {
        let num = 45
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 9, "45 should reduce to 9: 4+5=9")
    }

    // Test case 5: Three-digit number requiring multiple reductions
    // 测试用例5：需要多次归约的三位数
    func testAddDigits_ThreeDigitsMultipleReductions() {
        let num = 999
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 9, "999 should reduce to 9: 9+9+9=27, 2+7=9")
    }

    // Test case 6: Large number that reduces to 1
    // 测试用例6：大数归约到1
    func testAddDigits_LargeNumberTo1() {
        let num = 123_456_789
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 9, "123456789 should reduce to 9: 1+2+3+4+5+6+7+8+9=45, 4+5=9")
    }

    // Test case 7: Number that reduces to 3
    // 测试用例7：归约到3的数字
    func testAddDigits_ReducesTo3() {
        let num = 12
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 3, "12 should reduce to 3: 1+2=3")
    }

    // Test case 8: Number that reduces to 6
    // 测试用例8：归约到6的数字
    func testAddDigits_ReducesTo6() {
        let num = 15
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 6, "15 should reduce to 6: 1+5=6")
    }

    // Test case 9: Maximum constraint value
    // 测试用例9：最大边界值
    func testAddDigits_MaxConstraintValue() {
        let num = Int(Int32.max) // 2147483647
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 1, "2147483647 should reduce to 1: 2+1+4+7+4+8+3+6+4+7=46, 4+6=10, 1+0=1")
    }

    // Test case 10: Number that requires two reductions
    // 测试用例10：需要两次归约的数字
    func testAddDigits_TwoReductionsNeeded() {
        let num = 199
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 1, "199 should reduce to 1: 1+9+9=19, 1+9=10, 1+0=1")
    }

    // Test case 11: Performance test with large number
    // 测试用例11：大数性能测试
    func testAddDigits_PerformanceLargeNumber() {
        let num = 999_999_999

        measure {
            let result = solution.addDigits(num)
            XCTAssertEqual(result, 9, "999999999 should reduce to 9")
        }
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
    }

    // Test case 12: Number that reduces to 7
    // 测试用例12：归约到7的数字
    func testAddDigits_ReducesTo7() {
        let num = 16
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 7, "16 should reduce to 7: 1+6=7")
    }

    // Test case 13: Number that reduces to 8
    // 测试用例13：归约到8的数字
    func testAddDigits_ReducesTo8() {
        let num = 17
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 8, "17 should reduce to 8: 1+7=8")
    }

    // Test case 14: Number that reduces to 4
    // 测试用例14：归约到4的数字
    func testAddDigits_ReducesTo4() {
        let num = 13
        let result = solution.addDigits(num)
        print("Input: \(num), Output: \(result)")
        XCTAssertEqual(result, 4, "13 should reduce to 4: 1+3=4")
    }
}
