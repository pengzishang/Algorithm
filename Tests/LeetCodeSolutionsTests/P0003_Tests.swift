@testable import LeetCodeSolutions
import XCTest

final class P0003_Solution1_Tests: XCTestCase {
    func test4() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("asjrgapa")
        print("Test 4 result: \(result)") // 测试1结果
        XCTAssertEqual(result, 6, "Failed for 'asjrgapa'. Expected 6")
    }

    func test5() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("wsslpluuwekuaxt")
        print("Test 5 result: \(result)") // 测试5结果
        XCTAssertEqual(result, 7, "Failed for 'wsslpluuwekuaxt'. Expected 7")
    }

    func test1() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("abcabcbb")
        print("Test 1 result: \(result)") // 测试1结果
        XCTAssertEqual(result, 3, "Failed for 'abcabcbb'. Expected 3")
    }

    func test2() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("bbbbb")
        print("Test 2 result: \(result)") // 测试2结果
        XCTAssertEqual(result, 1, "Failed for 'bbbbb'. Expected 1")
    }

    func test3() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("pwwkew")
        print("Test 3 result: \(result)") // 测试3结果
        XCTAssertEqual(result, 3, "Failed for 'pwwkew'. Expected 3")
    }

    func testEmptyString() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("")
        print("Empty string test result: \(result)") // 空字符串测试结果
        XCTAssertEqual(result, 0, "Failed for empty string. Expected 0")
    }

    func testSingleCharacter() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("a")
        print("Single character test result: \(result)") // 单字符测试结果
        XCTAssertEqual(result, 1, "Failed for single character 'a'. Expected 1")
    }

    func testAllUniqueCharacters() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("abcdefg")
        print("All unique characters test result: \(result)") // 全唯一字符测试结果
        XCTAssertEqual(result, 7, "Failed for 'abcdefg'. Expected 7")
    }

    func testRepeatingAtEnd() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("abcdeff")
        print("Repeating at end test result: \(result)") // 末尾重复测试结果
        XCTAssertEqual(result, 6, "Failed for 'abcdeff'. Expected 6")
    }

    func testRepeatingAtBeginning() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("aabcde")
        print("Repeating at beginning test result: \(result)") // 开头重复测试结果
        XCTAssertEqual(result, 5, "Failed for 'aabcde'. Expected 5")
    }

    func testMixedCharacters() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("aababcabcdabcde")
        print("Mixed characters test result: \(result)") // 混合字符测试结果
        XCTAssertEqual(result, 5, "Failed for 'aababcabcdabcde'. Expected 5")
    }

    func testNumbersAndSymbols() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("123!@#123")
        print("Numbers and symbols test result: \(result)") // 数字符号测试结果
        XCTAssertEqual(result, 6, "Failed for '123!@#123'. Expected 6")
    }

    func testUnicodeCharacters() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("🎉🚀🌟🎉🚀")
        print("Unicode characters test result: \(result)") // Unicode字符测试结果
        XCTAssertEqual(result, 3, "Failed for emoji string. Expected 3")
    }

    func testAlternatingCharacters() {
        let solution = P0003_Solution1()
        let result = solution.lengthOfLongestSubstring("abababab")
        print("Alternating characters test result: \(result)") // 交替字符测试结果
        XCTAssertEqual(result, 2, "Failed for 'abababab'. Expected 2")
    }

    func testLongStringPerformance() {
        let solution = P0003_Solution1()
        // Generate a long string with repeating pattern
        let longString = String(repeating: "abcdefghij", count: 1000)

        let startTime = Date()
        let result = solution.lengthOfLongestSubstring(longString)
        let endTime = Date()

        let executionTime = endTime.timeIntervalSince(startTime)
        print("Long string performance test result: \(result), time: \(executionTime) seconds") // 长字符串性能测试结果
        XCTAssertEqual(result, 10, "Failed for long string. Expected 10")
        XCTAssertLessThan(executionTime, 1.0, "Performance test failed - execution took too long")
    }
}

final class P0003_Solution2_Tests: XCTestCase {
    func test4() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("asjrgapa")
        print("[S2] Test 4 result: \(result)")
        XCTAssertEqual(result, 6, "[S2] Failed for 'asjrgapa'. Expected 6")
    }

    func test5() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("wsslpluuwekuaxt")
        print("[S2] Test 5 result: \(result)")
        XCTAssertEqual(result, 7, "[S2] Failed for 'wsslpluuwekuaxt'. Expected 7")
    }

    func test1() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("abcabcbb")
        print("[S2] Test 1 result: \(result)")
        XCTAssertEqual(result, 3, "[S2] Failed for 'abcabcbb'. Expected 3")
    }

    func test2() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("bbbbb")
        print("[S2] Test 2 result: \(result)")
        XCTAssertEqual(result, 1, "[S2] Failed for 'bbbbb'. Expected 1")
    }

    func test3() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("pwwkew")
        print("[S2] Test 3 result: \(result)")
        XCTAssertEqual(result, 3, "[S2] Failed for 'pwwkew'. Expected 3")
    }

    func testEmptyString() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("")
        print("[S2] Empty string test result: \(result)")
        XCTAssertEqual(result, 0, "[S2] Failed for empty string. Expected 0")
    }

    func testSingleCharacter() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("a")
        print("[S2] Single character test result: \(result)")
        XCTAssertEqual(result, 1, "[S2] Failed for single character 'a'. Expected 1")
    }

    func testAllUniqueCharacters() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("abcdefg")
        print("[S2] All unique characters test result: \(result)")
        XCTAssertEqual(result, 7, "[S2] Failed for 'abcdefg'. Expected 7")
    }

    func testRepeatingAtEnd() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("abcdeff")
        print("[S2] Repeating at end test result: \(result)")
        XCTAssertEqual(result, 6, "[S2] Failed for 'abcdeff'. Expected 6")
    }

    func testRepeatingAtBeginning() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("aabcde")
        print("[S2] Repeating at beginning test result: \(result)")
        XCTAssertEqual(result, 5, "[S2] Failed for 'aabcde'. Expected 5")
    }

    func testMixedCharacters() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("aababcabcdabcde")
        print("[S2] Mixed characters test result: \(result)")
        XCTAssertEqual(result, 5, "[S2] Failed for 'aababcabcdabcde'. Expected 5")
    }

    func testNumbersAndSymbols() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("123!@#123")
        print("[S2] Numbers and symbols test result: \(result)")
        XCTAssertEqual(result, 6, "[S2] Failed for '123!@#123'. Expected 6")
    }

    func testUnicodeCharacters() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("🎉🚀🌟🎉🚀")
        print("[S2] Unicode characters test result: \(result)")
        XCTAssertEqual(result, 3, "[S2] Failed for emoji string. Expected 3")
    }

    func testAlternatingCharacters() {
        let solution = P0003_Solution2()
        let result = solution.lengthOfLongestSubstring("abababab")
        print("[S2] Alternating characters test result: \(result)")
        XCTAssertEqual(result, 2, "[S2] Failed for 'abababab'. Expected 2")
    }

    func testLongStringPerformance() {
        let solution = P0003_Solution2()
        // Generate a long string with repeating pattern
        let longString = String(repeating: "abcdefghij", count: 1000)

        let startTime = Date()
        let result = solution.lengthOfLongestSubstring(longString)
        let endTime = Date()

        let executionTime = endTime.timeIntervalSince(startTime)
        print("[S2] Long string performance test result: \(result), time: \(executionTime) seconds")
        XCTAssertEqual(result, 10, "[S2] Failed for long string. Expected 10")
        XCTAssertLessThan(executionTime, 1, "[S2] Performance test failed - execution took too long")
    }
}
