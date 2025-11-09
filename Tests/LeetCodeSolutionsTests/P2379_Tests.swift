import XCTest
@testable import LeetCodeSolutions

final class P2379_Solution1_Tests: XCTestCase {
    // Test case from example 1
    // 示例 1 中的测试用例
    func testExample1() {
        let s = P2379_Solution1()
        let blocks = "WBBWWBBWBW"
        let k = 7
        let expected = 3
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case from example 2
    // 示例 2 中的测试用例
    func testExample2() {
        let s = P2379_Solution1()
        let blocks = "WBWBBBW"
        let k = 2
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Test case with k=1 and a 'B' present
    // k=1 且存在 'B' 的测试用例
    func testKIsOneWithBlackBlock() {
        let s = P2379_Solution1()
        let blocks = "WBWB"
        let k = 1
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Test case with k=1 and no 'B's present
    // k=1 且不存在 'B' 的测试用例
    func testKIsOneWithOnlyWhiteBlocks() {
        let s = P2379_Solution1()
        let blocks = "WWWW"
        let k = 1
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case where k equals the length of the string
    // k 等于字符串长度的测试用例
    func testKEqualsLength() {
        let s = P2379_Solution1()
        let blocks = "WBBW"
        let k = 4
        let expected = 2
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case with all 'W's
    // 全是 'W' 的测试用例
    func testAllWhiteBlocks() {
        let s = P2379_Solution1()
        let blocks = "WWWWW"
        let k = 5
        let expected = 5
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case with all 'B's
    // 全是 'B' 的测试用例
    func testAllBlackBlocks() {
        let s = P2379_Solution1()
        let blocks = "BBBBB"
        let k = 3
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case where the optimal window is at the start
    // 最优窗口在开头的测试用例
    func testOptimalWindowAtStart() {
        let s = P2379_Solution1()
        let blocks = "WBBWW"
        let k = 3
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case where the optimal window is in the middle
    // 最优窗口在中间的测试用例
    func testOptimalWindowInMiddle() {
        let s = P2379_Solution1()
        let blocks = "WWBBBW"
        let k = 3
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Test case where the optimal window is at the end
    // 最优窗口在结尾的测试用例
    func testOptimalWindowAtEnd() {
        let s = P2379_Solution1()
        let blocks = "WWWBB"
        let k = 2
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Test case with multiple optimal windows
    // 存在多个最优窗口的测试用例
    func testMultipleOptimalWindows() {
        let s = P2379_Solution1()
        let blocks = "BWWBWW"
        let k = 2
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case with alternating characters and even k
    // 交替字符且 k 为偶数的测试用例
    func testAlternatingEvenK() {
        let s = P2379_Solution1()
        let blocks = "WBWBWBWB"
        let k = 4
        let expected = 2
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Test case with alternating characters and odd k
    // 交替字符且 k 为奇数的测试用例
    func testAlternatingOddK() {
        let s = P2379_Solution1()
        let blocks = "WBWBWBWBW"
        let k = 5
        let expected = 2
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Boundary case: single character 'B'
    // 边界情况：单个字符 'B'
    func testSingleBlackBlock() {
        let s = P2379_Solution1()
        let blocks = "B"
        let k = 1
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Boundary case: single character 'W'
    // 边界情况：单个字符 'W'
    func testSingleWhiteBlock() {
        let s = P2379_Solution1()
        let blocks = "W"
        let k = 1
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // A more complex case
    // 一个更复杂的测试用例
    func testComplexCase1() {
        let s = P2379_Solution1()
        let blocks = "WBWBWBB"
        let k = 4
        let expected = 1
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }

    // Test case where the initial window is not the best one
    // 初始窗口不是最优解的测试用例
    func testInitialWindowIsNotOptimal() {
        let s = P2379_Solution1()
        let blocks = "WWWWWBBBBB"
        let k = 5
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for blocks = \(blocks), k = \(k)")
    }
    
    // Maximum length string, all 'W'
    // 最大长度字符串，全'W'
    func testMaxLengthAllWhite() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "W", count: 100)
        let k = 50
        let expected = 50
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for a long string of 'W's")
    }
    
    // Maximum length string, all 'B'
    // 最大长度字符串，全'B'
    func testMaxLengthAllBlack() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "B", count: 100)
        let k = 75
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for a long string of 'B's")
    }
    
    // Maximum length string, k=n
    // 最大长度字符串, k=n
    func testMaxLengthKEqualsN() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "W", count: 50) + String(repeating: "B", count: 50)
        let k = 100
        let expected = 50
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for max length string where k=n")
    }

    // Maximum length string, optimal window at the start
    // 最大长度字符串，最优窗口在开头
    func testMaxLengthOptimalAtStart() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "B", count: 10) + String(repeating: "W", count: 90)
        let k = 10
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for max length string, optimal at start")
    }
    
    // Maximum length string, optimal window at the end
    // 最大长度字符串，最优窗口在结尾
    func testMaxLengthOptimalAtEnd() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "W", count: 90) + String(repeating: "B", count: 10)
        let k = 10
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for max length string, optimal at end")
    }
    
    // Maximum length string, optimal window in the middle
    // 最大长度字符串，最优窗口在中间
    func testMaxLengthOptimalInMiddle() {
        let s = P2379_Solution1()
        let blocks = String(repeating: "W", count: 45) + String(repeating: "B", count: 10) + String(repeating: "W", count: 45)
        let k = 10
        let expected = 0
        let result = s.minimumRecolors(blocks, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for max length string, optimal in middle")
    }
}