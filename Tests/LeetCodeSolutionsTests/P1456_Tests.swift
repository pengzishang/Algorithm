@testable import LeetCodeSolutions
import XCTest

final class P1456_Solution1_Tests: XCTestCase {
    // 示例 1：s = "abciiidef", k = 3, 预期输出：3
    // Example 1: s = "abciiidef", k = 3, Expected output: 3
    func testExample1() {
        let s = P1456_Solution1()
        let inputS = "abciiidef"
        let k = 3
        let expected = 3
        let result = s.maxVowels(inputS, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 1")
    }

    // 示例 2：s = "aeiou", k = 2, 预期输出：2
    // Example 2: s = "aeiou", k = 2, Expected output: 2
    func testExample2() {
        let s = P1456_Solution1()
        let inputS = "aeiou"
        let k = 2
        let expected = 2
        let result = s.maxVowels(inputS, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 2")
    }

    // 示例 3：s = "leetcode", k = 3, 预期输出：2
    // Example 3: s = "leetcode", k = 3, Expected output: 2
    func testExample3() {
        let s = P1456_Solution1()
        let inputS = "leetcode"
        let k = 3
        let expected = 2
        let result = s.maxVowels(inputS, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 3")
    }

    // 示例 4：s = "rhythms", k = 4, 预期输出：0
    // Example 4: s = "rhythms", k = 4, Expected output: 0
    func testExample4() {
        let s = P1456_Solution1()
        let inputS = "rhythms"
        let k = 4
        let expected = 0
        let result = s.maxVowels(inputS, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 4")
    }

    // 示例 5：s = "tryhard", k = 4, 预期输出：1
    // Example 5: s = "tryhard", k = 4, Expected output: 1
    func testExample5() {
        let s = P1456_Solution1()
        let inputS = "tryhard"
        let k = 4
        let expected = 1
        let result = s.maxVowels(inputS, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 5")
    }

    // 附加测试用例 1: k 等于 1
    // Additional Test Case 1: k is 1
    func testKIsOne1() {
        measure {
            let s = P1456_Solution1()
            let inputS = "hello"
            let k = 1
            let expected = 1
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed when k is 1")
        }
    }

    // 附加测试用例 2: k 等于字符串长度
    // Additional Test Case 2: k equals string length
    func testKEqualsStringLength2() {
        measure {
            let s = P1456_Solution1()
            let inputS = "programming"
            let k = 11
            let expected = 3
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed when k equals string length")
        }
    }

    // 附加测试用例 3: 字符串中没有元音
    // Additional Test Case 3: String with no vowels
    func testNoVowelsInString3() {
        measure {
            let s = P1456_Solution1()
            let inputS = "xyzxyz"
            let k = 3
            let expected = 0
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for string with no vowels")
        }
    }

    // 附加测试用例 4: 字符串中全是元音
    // Additional Test Case 4: String with all vowels
    func testAllVowelsInString4() {
        measure {
            let s = P1456_Solution1()
            let inputS = "aeiouaeiou"
            let k = 5
            let expected = 5
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for string with all vowels")
        }
    }

    // 附加测试用例 5: 元音在字符串开头
    // Additional Test Case 5: Vowels at the start of the string
    func testVowelsAtStart5() {
        measure {
            let s = P1456_Solution1()
            let inputS = "eixample"
            let k = 3
            let expected = 2
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for vowels at the start")
        }
    }

    // 附加测试用例 6: 元音在字符串结尾
    // Additional Test Case 6: Vowels at the end of the string
    func testVowelsAtEnd6() {
        measure {
            let s = P1456_Solution1()
            let inputS = "exampleia"
            let k = 3
            let expected = 3
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for vowels at the end")
        }
    }

    // 附加测试用例 7: 字符串只有一个元音字符
    // Additional Test Case 7: String with a single vowel character
    func testSingleVowelCharacter7() {
        measure {
            let s = P1456_Solution1()
            let inputS = "a"
            let k = 1
            let expected = 1
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for single vowel character string")
        }
    }

    // 附加测试用例 8: 字符串只有一个辅音字符
    // Additional Test Case 8: String with a single consonant character
    func testSingleConsonantCharacter8() {
        measure {
            let s = P1456_Solution1()
            let inputS = "b"
            let k = 1
            let expected = 0
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for single consonant character string")
        }
    }

    // 附加测试用例 9: 较长的 k，元音分散
    // Additional Test Case 9: Long k with spread out vowels
    func testLargeKWithSpreadVowels9() {
        measure {
            let s = P1456_Solution1()
            let inputS = "aebicoduf"
            let k = 7
            let expected = 4
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for long k with spread vowels")
        }
    }

    // 附加测试用例 10: 元音和辅音交替出现
    // Additional Test Case 10: Interleaving vowels and consonants
    func testInterleavingVowelsAndConsonants10() {
        measure {
            let s = P1456_Solution1()
            let inputS = "abababab"
            let k = 4
            let expected = 2
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for interleaving vowels and consonants")
        }
    }

    // 附加测试用例 11: 字符串中全是辅音
    // Additional Test Case 11: String with all consonants
    func testAllConsonants11() {
        measure {
            let s = P1456_Solution1()
            let inputS = "rhythms"
            let k = 7
            let expected = 0
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for string with all consonants")
        }
    }

    // 附加测试用例 12: k 小于元音簇的长度
    // Additional Test Case 12: k is smaller than a vowel cluster
    func testKSmallerThanVowelCluster12() {
        measure {
            let s = P1456_Solution1()
            let inputS = "weallloveyou"
            let k = 3
            let expected = 2
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed when k is smaller than a vowel cluster")
        }
    }

    // 附加测试用例 13: k 大于元音簇的长度
    // Additional Test Case 13: k is larger than a vowel cluster
    func testKLargerThanVowelCluster13() {
        measure {
            let s = P1456_Solution1()
            let inputS = "weallloveyou"
            let k = 6
            let expected = 4
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed when k is larger than a vowel cluster")
        }
    }

    // 附加测试用例 14: 窗口重叠的情况
    // Additional Test Case 14: Overlapping windows scenario
    func testOverlappingWindows14() {
        measure {
            let s = P1456_Solution1()
            let inputS = "consectetuer"
            let k = 5
            let expected = 3
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed for overlapping windows")
        }
    }

    // 附加测试用例 15: 另一个正常情况
    // Additional Test Case 15: Another normal case
    func testNormalCase15() {
        measure {
            let s = P1456_Solution1()
            let inputS = "celebration"
            let k = 5
            let expected = 3
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on a normal case")
        }
    }

    // 附加测试用例 16: 极限情况 - 长字符串，全是元音
    // Additional Test Case 16: Extreme case - long string, all vowels
    func testPerformanceLongStringAllVowels16() {
        measure {
            let s = P1456_Solution1()
            let inputS = String(repeating: "a", count: 100_000)
            let k = 100
            let expected = 100
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on performance case: long string with all vowels")
        }
    }

    // 附加测试用例 17: 极限情况 - 长字符串，混合元音和辅音
    // Additional Test Case 17: Extreme case - long string, mixed vowels and consonants
    func testPerformanceLongStringMixed17() {
        measure {
            let s = P1456_Solution1()
            let inputS = String(repeating: "a", count: 50000) + String(repeating: "b", count: 50000)
            let k = 60000
            let expected = 50000
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on performance case: long mixed string")
        }
    }

    // 附加测试用例 18: 极限情况 - 长字符串，没有元音
    // Additional Test Case 18: Extreme case - long string, no vowels
    func testPerformanceLongStringNoVowels18() {
        measure {
            let s = P1456_Solution1()
            let inputS = String(repeating: "z", count: 100_000)
            let k = 1000
            let expected = 0
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on performance case: long string with no vowels")
        }
    }

    // 附加测试用例 19: 极限情况 - 长字符串，交替元音辅音
    // Additional Test Case 19: Extreme case - long string, alternating vowels/consonants
    func testPerformanceLongStringAlternating19() {
        measure {
            let s = P1456_Solution1()
            let inputS = String(repeating: "ab", count: 50000)
            let k = 10001
            let expected = 5001
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on performance case: long alternating string")
        }
    }

    // 附加测试用例 20: 极限情况 - 长字符串，滑动窗口最坏情况
    // Additional Test Case 20: Extreme case - long string, worst case for sliding window
    func testPerformanceWorstCaseForSlidingWindow20() {
        measure {
            let s = P1456_Solution1()
            let inputS = String(repeating: "ua", count: 50000)
            let k = 2
            let expected = 2
            let result = s.maxVowels(inputS, k)
            print(result)
            XCTAssertEqual(result, expected, "Failed on performance case: sliding window worst case")
        }
    }
}
