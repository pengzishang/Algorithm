import XCTest

@testable import LeetCodeSolutions

final class P0014_Tests: XCTestCase {
    func test1() {
        let s = P0014_Solution1()

        // 边界情况: 所有字符串都相同
        XCTAssertEqual(s.longestCommonPrefix(["same", "same", "same"]), "same")

        // 示例1: 正常情况有公共前缀
        XCTAssertEqual(s.longestCommonPrefix(["flower", "flow", "flight"]), "fl")

        // 示例2: 没有公共前缀
        XCTAssertEqual(s.longestCommonPrefix(["dog", "racecar", "car"]), "")

        // 边界情况: 只有一个字符串
        XCTAssertEqual(s.longestCommonPrefix(["single"]), "single")

        // 边界情况: 包含空字符串
        XCTAssertEqual(s.longestCommonPrefix(["abc", "", "ab"]), "")

        // 边界情况: 第一个字符串最短
        XCTAssertEqual(s.longestCommonPrefix(["a", "abc", "abcd"]), "a")
    }

    func test2() {
        let s = P0014_Solution2()

        // 边界情况: 第一个字符串最短
        XCTAssertEqual(s.longestCommonPrefix(["a", "abc", "abcd"]), "a")

        // 示例2: 没有公共前缀
        XCTAssertEqual(s.longestCommonPrefix(["dog", "racecar", "car"]), "")

        // 边界情况: 只有一个字符串
        XCTAssertEqual(s.longestCommonPrefix(["single"]), "single")

        // 边界情况: 所有字符串都相同
        XCTAssertEqual(s.longestCommonPrefix(["same", "same", "same"]), "same")

        // 示例1: 正常情况有公共前缀
        XCTAssertEqual(s.longestCommonPrefix(["flower", "flow", "flight"]), "fl")

        // 边界情况: 包含空字符串
        XCTAssertEqual(s.longestCommonPrefix(["abc", "", "ab"]), "")
    }
}
