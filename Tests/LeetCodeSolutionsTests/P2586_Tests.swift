import XCTest
@testable import LeetCodeSolutions

final class P2586_Solution1_Tests: XCTestCase {
    func testExample1() {
        // 中文: 测试用例 1，来自题目描述
        // English: Test case 1, from the problem description
        let s = P2586_Solution1()
        let words = ["are", "amy", "u"]
        let left = 0
        let right = 2
        let expected = 2
        let result = s.vowelStrings(words, left, right)
        print(result)
        XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
    }

    func testExample2() {
        // 中文: 测试用例 2，来自题目描述
        // English: Test case 2, from the problem description
        let s = P2586_Solution1()
        let words = ["hey", "aeo", "mu", "ooo", "artro"]
        let left = 1
        let right = 4
        let expected = 3
        let result = s.vowelStrings(words, left, right)
        print(result)
        XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
    }
    
    func testNoVowelStringsInRange() {
        // 中文: 测试范围内没有元音字符串的情况
        // English: Test case with no vowel strings in the range
        let s = P2586_Solution1()
        let words = ["rty", "bdf", "ghj"]
        let left = 0
        let right = 2
        let expected = 0
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testAllVowelStringsInRange() {
        // 中文: 测试范围内所有字符串都是元音字符串的情况
        // English: Test case where all strings in the range are vowel strings
        let s = P2586_Solution1()
        let words = ["ae", "io", "ua"]
        let left = 0
        let right = 2
        let expected = 3
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSingleElementRangeVowel() {
        // 中文: 测试范围只包含一个元音字符串的情况
        // English: Test case with a range containing a single vowel string
        let s = P2586_Solution1()
        let words = ["apple", "banana", "orange"]
        let left = 2
        let right = 2
        let expected = 1
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSingleElementRangeConsonant() {
        // 中文: 测试范围只包含一个非元音字符串的情况
        // English: Test case with a range containing a single non-vowel string
        let s = P2586_Solution1()
        let words = ["apple", "banana", "orange"]
        let left = 1
        let right = 1
        let expected = 0
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testFullRange() {
        // 中文: 测试范围为整个数组的情况
        // English: Test case where the range is the entire array
        let s = P2586_Solution1()
        let words = ["a", "b", "e", "f", "i"]
        let left = 0
        let right = 4
        let expected = 3
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSubRangeStart() {
        // 中文: 测试范围从数组开头开始的子集
        // English: Test case with a sub-range starting from the beginning of the array
        let s = P2586_Solution1()
        let words = ["a", "b", "e", "f", "i"]
        let left = 0
        let right = 2
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSubRangeEnd() {
        // 中文: 测试范围在数组结尾的子集
        // English: Test case with a sub-range at the end of the array
        let s = P2586_Solution1()
        let words = ["a", "b", "e", "f", "i"]
        let left = 2
        let right = 4
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSubRangeMiddle() {
        // 中文: 测试范围在数组中间的子集
        // English: Test case with a sub-range in the middle of the array
        let s = P2586_Solution1()
        let words = ["a", "b", "e", "f", "i"]
        let left = 1
        let right = 3
        let expected = 1
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testSingleLetterWords() {
        // 中文: 测试只包含单个字母的字符串数组
        // English: Test case with an array of single-letter strings
        let s = P2586_Solution1()
        let words = ["a", "b", "c", "d", "e", "f"]
        let left = 0
        let right = 5
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testMixedStartEndTypes() {
        // 中文: 测试混合类型的字符串
        // English: Test case with mixed types of strings
        let s = P2586_Solution1()
        let words = ["eat", "tea", "eye", "yay"]
        let left = 0
        let right = 3
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testAllSameVowelString() {
        // 中文: 测试所有字符串都是相同的元音字符串
        // English: Test case where all strings are the same vowel string
        let s = P2586_Solution1()
        let words = ["apple", "apple", "apple"]
        let left = 0
        let right = 2
        let expected = 3
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testAllSameConsonantString() {
        // 中文: 测试所有字符串都是相同的非元音字符串
        // English: Test case where all strings are the same non-vowel string
        let s = P2586_Solution1()
        let words = ["rhythm", "rhythm", "rhythm"]
        let left = 0
        let right = 2
        let expected = 0
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testLongWords() {
        // 中文: 测试较长的字符串
        // English: Test case with longer strings
        let s = P2586_Solution1()
        let words = ["understanding", "education", "international"]
        let left = 0
        let right = 2
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testRangeExcludesVowels() {
        // 中文: 测试范围不包含任何元音字符串的情况
        // English: Test case where the range excludes any vowel strings
        let s = P2586_Solution1()
        let words = ["a", "b", "c", "d", "e"]
        let left = 1
        let right = 3
        let expected = 0
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }
    
    func testRangeIncludesOneVowel() {
        // 中文: 测试范围只包含一个元音字符串的情况
        // English: Test case where the range includes exactly one vowel string
        let s = P2586_Solution1()
        let words = ["a", "b", "c", "d", "e"]
        let left = 0
        let right = 3
        let expected = 1
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testWordsWithOnlyVowels() {
        // 中文: 测试所有字母都是元音的字符串
        // English: Test case with strings consisting only of vowels
        let s = P2586_Solution1()
        let words = ["aeiou", "oieau", "uaeio"]
        let left = 0
        let right = 1
        let expected = 2
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testWordsWithOnlyConsonants() {
        // 中文: 测试所有字母都是辅音的字符串
        // English: Test case with strings consisting only of consonants
        let s = P2586_Solution1()
        let words = ["rhythm", "tryst", "gypsy"]
        let left = 0
        let right = 2
        let expected = 0
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }
    
    func testLeftEqualsRightBoundary() {
        // 中文: 测试 left 和 right 相等且在数组末尾的情况
        // English: Test case where left equals right at the end of the array
        let s = P2586_Solution1()
        let words = ["ui", "io", "ae"]
        let left = 2
        let right = 2
        let expected = 1
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }
    
    func testLeftEqualsRightBoundaryStart() {
        // 中文: 测试 left 和 right 相等且在数组开头的情况
        // English: Test case where left equals right at the start of the array
        let s = P2586_Solution1()
        let words = ["ui", "to", "be"]
        let left = 0
        let right = 0
        let expected = 1
        measure {
            let result = s.vowelStrings(words, left, right)
            print(result)
            XCTAssertEqual(result, expected, "Failed for words: \(words), left: \(left), right: \(right)")
        }
    }

    func testPerformanceWithLargeInput() {
        // 中文: 极限情况测试，包含1000个字符串
        // English: Performance test with a large input of 1000 strings
        let s = P2586_Solution1()
        let words = Array(repeating: "apple", count: 500) + Array(repeating: "banana", count: 500)
        let left = 0
        let right = 999
        let expected = 500
        measure {
            let result = s.vowelStrings(words, left, right)
            // 打印可能会影响性能测量，但在调试时有用
            // Printing can affect performance measurement, but is useful for debugging
            // print(result)
            XCTAssertEqual(result, expected, "Failed for large input case")
        }
    }
}