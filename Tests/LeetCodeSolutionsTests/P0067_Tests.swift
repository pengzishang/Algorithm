@testable import LeetCodeSolutions
import XCTest

final class P0067_Solution1_Tests: XCTestCase {
    let solution = P0067_Solution1()

    // Test Case 1: Basic addition with carry
    // 测试用例1: 基础加法，有进位
    func test1() {
        let a = "11"
        let b = "1"
        let result = solution.addBinary(a, b)
        print("Test 1 result: \(result)")
        XCTAssertEqual(result, "100", "11 + 1 should equal 100")
    }

    // Test Case 2: Addition with multiple carries
    // 测试用例2: 多次进位的加法
    func test2() {
        let a = "1010"
        let b = "1011"
        let result = solution.addBinary(a, b)
        print("Test 2 result: \(result)")
        XCTAssertEqual(result, "10101", "1010 + 1011 should equal 10101")
    }

    // Test Case 3: Both strings are zero
    // 测试用例3: 两个字符串都是零
    func test3() {
        let a = "0"
        let b = "0"
        let result = solution.addBinary(a, b)
        print("Test 3 result: \(result)")
        XCTAssertEqual(result, "0", "0 + 0 should equal 0")
    }

    // Test Case 4: One string is zero
    // 测试用例4: 其中一个字符串是零
    func test4() {
        let a = "0"
        let b = "111"
        let result = solution.addBinary(a, b)
        print("Test 4 result: \(result)")
        XCTAssertEqual(result, "111", "0 + 111 should equal 111")
    }

    // Test Case 5: Different lengths with carry
    // 测试用例5: 不同长度且有进位
    func test5() {
        let a = "1"
        let b = "111"
        let result = solution.addBinary(a, b)
        print("Test 5 result: \(result)")
        XCTAssertEqual(result, "1000", "1 + 111 should equal 1000")
    }

    // Test Case 6: Large numbers with carry propagation
    // 测试用例6: 大数且有连续进位
    func test6() {
        let a = "1111"
        let b = "1"
        let result = solution.addBinary(a, b)
        print("Test 6 result: \(result)")
        XCTAssertEqual(result, "10000", "1111 + 1 should equal 10000")
    }

    // Test Case 7: Random case 1
    // 测试用例7: 随机情况1
    func test7() {
        let a = "1101"
        let b = "101"
        let result = solution.addBinary(a, b)
        print("Test 7 result: \(result)")
        XCTAssertEqual(result, "10010", "1101 + 101 should equal 10010")
    }

    // Test Case 8: Random case 2
    // 测试用例8: 随机情况2
    func test8() {
        let a = "1001"
        let b = "1100"
        let result = solution.addBinary(a, b)
        print("Test 8 result: \(result)")
        XCTAssertEqual(result, "10101", "1001 + 1100 should equal 10101")
    }

    // Test Case 10: Large length difference
    // 测试用例10: 长度差异很大
    func test10() {
        let a = "1" + String(repeating: "0", count: 5000)
        let b = "1"
        let result = solution.addBinary(a, b)
        print("Test 10 result length: \(result.count)")
        XCTAssertEqual(result, "1" + String(repeating: "0", count: 4999) + "1",
                       "Large length difference should be handled correctly")
    }

    // Test Case 11: Single digit addition
    // 测试用例11: 单数字加法
    func test11() {
        let a = "1"
        let b = "0"
        let result = solution.addBinary(a, b)
        print("Test 11 result: \(result)")
        XCTAssertEqual(result, "1", "1 + 0 should equal 1")
    }

    // Test Case 12: Complex carry scenario
    // 测试用例12: 复杂进位场景
    func test12() {
        let a = "101010"
        let b = "110011"
        let result = solution.addBinary(a, b)
        print("Test 12 result: \(result)")
        XCTAssertEqual(result, "1011101", "101010 + 110011 should equal 1011101")
    }

    // Test Case 13: Maximum length with alternating bits
    // 测试用例13: 最大长度交替位
    func test13() {
        let a = String(repeating: "10", count: 5000)
        let b = String(repeating: "01", count: 5000)
        let result = solution.addBinary(a, b)
        print("Test 13 result length: \(result.count)")
        XCTAssertEqual(result, String(repeating: "11", count: 5000),
                       "Alternating bit patterns should sum correctly")
    }
}
