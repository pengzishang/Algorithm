import XCTest
@testable import LeetCodeSolutions

final class P3694_Solution1_Tests: XCTestCase {

    // Test case from Example 1
    // 示例 1 中的测试用例
    func testExample1() {
        let s = P3694_Solution1()
        let inputS = "LUL"
        let k = 1
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test case from Example 2
    // 示例 2 中的测试用例
    func testExample2() {
        let s = P3694_Solution1()
        let inputS = "UDLR"
        let k = 4
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test case from Example 3
    // 示例 3 中的测试用例
    func testExample3() {
        let s = P3694_Solution1()
        let inputS = "UU"
        let k = 1
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with alternating opposite moves, removing a single character
    // 测试交替相反的移动，移除单个字符
    func testAlternatingOppositeMovesRemoveOne() {
        let s = P3694_Solution1()
        let inputS = "UDUD"
        let k = 1
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with all same characters
    // 测试所有字符都相同的情况
    func testAllSameCharacters() {
        let s = P3694_Solution1()
        let inputS = "LLLLL"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with a string that cancels out, removing a pair
    // 测试会相互抵消的字符串，移除一对字符
    func testCancelingStringRemovePair() {
        let s = P3694_Solution1()
        let inputS = "UDUDUD"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with another canceling string
    // 测试另一个会相互抵消的字符串
    func testAnotherCancelingString() {
        let s = P3694_Solution1()
        let inputS = "LRLRLR"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with a long alternating string, removing one character
    // 测试一个长的交替字符串，移除一个字符
    func testLongAlternatingStringRemoveOne() {
        let s = P3694_Solution1()
        let inputS = "RLRLRLRLRL"
        let k = 1
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with a patterned string
    // 测试一个有模式的字符串
    func testPatternedString() {
        let s = P3694_Solution1()
        let inputS = "RURURU"
        let k = 3
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with a short, mixed-character string
    // 测试一个短的、混合字符的字符串
    func testShortMixedString() {
        let s = P3694_Solution1()
        let inputS = "LDR"
        let k = 2
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test where removing any single character results in a different endpoint
    // 测试移除任何单个字符都会导致不同终点的情况
    func testAllDistinctAfterOneRemoval() {
        let s = P3694_Solution1()
        let inputS = "ULDR"
        let k = 1
        let expected = 4
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test removing a larger substring
    // 测试移除一个较大的子字符串
    func testRemovingLargeSubstring() {
        let s = P3694_Solution1()
        let inputS = "ULDR"
        let k = 3
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test with a repetitive non-canceling pattern
    // 测试一个重复但非抵消的模式
    func testRepetitiveNonCancelingPattern() {
        let s = P3694_Solution1()
        let inputS = "RDRD"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Boundary case: s length is 2, k is 1
    // 边界情况：s 长度为 2，k 为 1
    func testLengthTwoKOneA() {
        let s = P3694_Solution1()
        let inputS = "LR"
        let k = 1
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Boundary case: s length is 2, k is 1, vertical moves
    // 边界情况：s 长度为 2，k 为 1，垂直移动
    func testLengthTwoKOneB() {
        let s = P3694_Solution1()
        let inputS = "UD"
        let k = 1
        let expected = 2
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Boundary case: s length is 2, k is 2
    // 边界情况：s 长度为 2，k 为 2
    func testLengthTwoKTwoA() {
        let s = P3694_Solution1()
        let inputS = "RL"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Boundary case: s length is 2, k is 2, vertical moves
    // 边界情况：s 长度为 2，k 为 2，垂直移动
    func testLengthTwoKTwoB() {
        let s = P3694_Solution1()
        let inputS = "DU"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // More complex case with mixed moves
    // 更复杂的混合移动情况
    func testComplexMixedMoves() {
        let s = P3694_Solution1()
        let inputS = "RULDRD"
        let k = 3
        let expected = 4
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test case where removals lead to symmetrical endpoints
    // 测试移除子串后导致对称终点的情况
    func testSymmetricalEndpointsHorizontal() {
        let s = P3694_Solution1()
        let inputS = "LLRR"
        let k = 2
        let expected = 3
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Test case where removals lead to symmetrical endpoints (vertical)
    // 测试移除子串后导致对称终点的情况（垂直）
    func testSymmetricalEndpointsVertical() {
        let s = P3694_Solution1()
        let inputS = "UUDD"
        let k = 2
        let expected = 3
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }
    
    // Test case with repeated characters, but removals still result in the same remaining string
    // 测试包含重复字符，但移除后总得到相同剩余字符串的情况
    func testRepeatedCharsSameResult() {
        let s = P3694_Solution1()
        let inputS = "RRR"
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }

    // Boundary case: smallest possible input string
    // 边界情况：最小可能的输入字符串
    func testSmallestInput() {
        let s = P3694_Solution1()
        let inputS = "U"
        let k = 1
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }
    
    // Performance test with a long string of repeating canceling pairs.
    // 使用长的重复抵消对字符串进行性能测试。
    func testPerformanceWithCancelingPairs() {
        let s = P3694_Solution1()
        let inputS = String(repeating: "UD", count: 50000)
        let k = 2
        let expected = 1
        let result = s.numberOfPoints(s: inputS, k: k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for s = \(inputS), k = \(k)")
    }
}