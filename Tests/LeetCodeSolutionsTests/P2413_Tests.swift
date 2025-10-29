@testable import LeetCodeSolutions
import XCTest

final class P2413_Solution1_Tests: XCTestCase {
    let solution = P2413_Solution1()

    // Test case 1: n = 5 / 测试用例1: n = 5
    func testSmallestEvenMultiple_1() {
        let n = 5
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 10, "最小公倍数应该是10 / The smallest even multiple should be 10")
    }

    // Test case 2: n = 6 / 测试用例2: n = 6
    func testSmallestEvenMultiple_2() {
        let n = 6
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 6, "最小公倍数应该是6 / The smallest even multiple should be 6")
    }

    // Test case 3: n = 1 (minimum boundary) / 测试用例3: n = 1 (最小边界)
    func testSmallestEvenMultiple_3() {
        let n = 1
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 2, "最小公倍数应该是2 / The smallest even multiple should be 2")
    }

    // Test case 4: n = 2 (even number) / 测试用例4: n = 2 (偶数)
    func testSmallestEvenMultiple_4() {
        let n = 2
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 2, "最小公倍数应该是2 / The smallest even multiple should be 2")
    }

    // Test case 5: n = 3 (odd number) / 测试用例5: n = 3 (奇数)
    func testSmallestEvenMultiple_5() {
        let n = 3
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 6, "最小公倍数应该是6 / The smallest even multiple should be 6")
    }

    // Test case 6: n = 4 (even number) / 测试用例6: n = 4 (偶数)
    func testSmallestEvenMultiple_6() {
        let n = 4
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 4, "最小公倍数应该是4 / The smallest even multiple should be 4")
    }

    // Test case 7: n = 7 (odd prime) / 测试用例7: n = 7 (奇质数)
    func testSmallestEvenMultiple_7() {
        let n = 7
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 14, "最小公倍数应该是14 / The smallest even multiple should be 14")
    }

    // Test case 8: n = 8 (power of 2) / 测试用例8: n = 8 (2的幂)
    func testSmallestEvenMultiple_8() {
        let n = 8
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 8, "最小公倍数应该是8 / The smallest even multiple should be 8")
    }

    // Test case 9: n = 9 (odd composite) / 测试用例9: n = 9 (奇合数)
    func testSmallestEvenMultiple_9() {
        let n = 9
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 18, "最小公倍数应该是18 / The smallest even multiple should be 18")
    }

    // Test case 10: n = 10 (even composite) / 测试用例10: n = 10 (偶合数)
    func testSmallestEvenMultiple_10() {
        let n = 10
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 10, "最小公倍数应该是10 / The smallest even multiple should be 10")
    }

    // Test case 11: n = 15 (odd composite) / 测试用例11: n = 15 (奇合数)
    func testSmallestEvenMultiple_11() {
        let n = 15
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 30, "最小公倍数应该是30 / The smallest even multiple should be 30")
    }

    // Test case 12: n = 16 (power of 2) / 测试用例12: n = 16 (2的幂)
    func testSmallestEvenMultiple_12() {
        let n = 16
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 16, "最小公倍数应该是16 / The smallest even multiple should be 16")
    }

    // Test case 13: n = 25 (odd square) / 测试用例13: n = 25 (奇平方数)
    func testSmallestEvenMultiple_13() {
        let n = 25
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 50, "最小公倍数应该是50 / The smallest even multiple should be 50")
    }

    // Test case 14: n = 149 (large odd prime) / 测试用例14: n = 149 (大奇质数)
    func testSmallestEvenMultiple_14() {
        let n = 149
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 298, "最小公倍数应该是298 / The smallest even multiple should be 298")
    }

    // Test case 15: n = 150 (maximum boundary) / 测试用例15: n = 150 (最大边界)
    func testSmallestEvenMultiple_15() {
        let n = 150
        let result = solution.smallestEvenMultiple(n)
        print("Input: n = \(n), Output: \(result)")
        XCTAssertEqual(result, 150, "最小公倍数应该是150 / The smallest even multiple should be 150")
    }
}
