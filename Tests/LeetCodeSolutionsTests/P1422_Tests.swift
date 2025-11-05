@testable import LeetCodeSolutions
import XCTest

final class P1422_Solution1_Tests: XCTestCase {
    // MARK: - Test cases from the problem description

    // MARK: - 从题目描述中提取的测试用例

    // Test case 1 from the description.
    // 题目描述中的测试用例 1。
    func testExample1() {
        let s = P1422_Solution1()
        let input = "011101"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '011101'. Expected 5, got \(result).")
    }

    // Test case 2 from the description.
    // 题目描述中的测试用例 2。
    func testExample2() {
        let s = P1422_Solution1()
        let input = "00111"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00111'. Expected 5, got \(result).")
    }

    // Test case 3 from the description.
    // 题目描述中的测试用例 3。
    func testExample3() {
        let s = P1422_Solution1()
        let input = "1111"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '1111'. Expected 3, got \(result).")
    }

    // MARK: - Boundary test cases

    // MARK: - 边界情况测试用例

    // Test with the minimum length string "00".
    // 使用最小长度字符串 "00" 进行测试。
    func testBoundaryCase_MinLength_00() {
        let s = P1422_Solution1()
        let input = "00"
        let expected = 1
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00'. Expected 1, got \(result).")
    }

    // Test with the minimum length string "01".
    // 使用最小长度字符串 "01" 进行测试。
    func testBoundaryCase_MinLength_01() {
        let s = P1422_Solution1()
        let input = "01"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '01'. Expected 2, got \(result).")
    }

    // Test with the minimum length string "10".
    // 使用最小长度字符串 "10" 进行测试。
    func testBoundaryCase_MinLength_10() {
        let s = P1422_Solution1()
        let input = "10"
        let expected = 0
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '10'. Expected 0, got \(result).")
    }

    // Test with the minimum length string "11".
    // 使用最小长度字符串 "11" 进行测试。
    func testBoundaryCase_MinLength_11() {
        let s = P1422_Solution1()
        let input = "11"
        let expected = 1
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11'. Expected 1, got \(result).")
    }

    // MARK: - All Zeros or All Ones

    // MARK: - 全为0或全为1的测试用例

    // Test with a string of all zeros.
    // 使用全为0的字符串进行测试。
    func testAllZeros_Short() {
        let s = P1422_Solution1()
        let input = "000"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '000'. Expected 2, got \(result).")
    }

    // Test with a longer string of all zeros.
    // 使用较长的全为0的字符串进行测试。
    func testAllZeros_Long() {
        let s = P1422_Solution1()
        let input = "00000"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00000'. Expected 4, got \(result).")
    }

    // Test with a string of all ones.
    // 使用全为1的字符串进行测试。
    func testAllOnes_Short() {
        let s = P1422_Solution1()
        let input = "111"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '111'. Expected 2, got \(result).")
    }

    // Test with a longer string of all ones.
    // 使用较长的全为1的字符串进行测试。
    func testAllOnes_Long() {
        let s = P1422_Solution1()
        let input = "11111"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11111'. Expected 4, got \(result).")
    }

    // MARK: - Mixed and Alternating Patterns

    // MARK: - 混合及交替模式的测试用例

    // Test with an alternating pattern starting with '1'.
    // 使用以'1'开头的交替模式字符串进行测试。
    func testAlternatingPattern_StartsWithOne() {
        let s = P1422_Solution1()
        let input = "101010"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '101010'. Expected 3, got \(result).")
    }

    // Test with an alternating pattern starting with '0'.
    // 使用以'0'开头的交替模式字符串进行测试。
    func testAlternatingPattern_StartsWithZero() {
        let s = P1422_Solution1()
        let input = "010101"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '010101'. Expected 4, got \(result).")
    }

    // Test with zeros followed by ones, where the best split is in the middle.
    // 使用先是0后是1的字符串进行测试，最佳分割点在中间。
    func testMixedPattern_ZerosThenOnes() {
        let s = P1422_Solution1()
        let input = "000111"
        let expected = 6
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '000111'. Expected 6, got \(result).")
    }

    // Test with ones followed by zeros, resulting in a low score.
    // 使用先是1后是0的字符串进行测试，得分较低。
    func testMixedPattern_OnesThenZeros() {
        let s = P1422_Solution1()
        let input = "111000"
        let expected = 2 // left="11", right="1000" -> 0+1=1. left="1", right="11000" -> 0+2=2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '111000'. Expected 2, got \(result).")
    }

    // Test with a complex mixed pattern.
    // 使用复杂的混合模式字符串进行测试。
    func testMixedPattern_Complex1() {
        let s = P1422_Solution1()
        let input = "10001"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '10001'. Expected 4, got \(result).")
    }

    // Test with another complex mixed pattern.
    // 使用另一个复杂的混合模式字符串进行测试。
    func testMixedPattern_Complex2() {
        let s = P1422_Solution1()
        let input = "011001"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '011001'. Expected 4, got \(result).")
    }

    // Test where the optimal split is near the end.
    // 测试最佳分割点在末尾附近的情况。
    func testOptimalSplit_NearEnd() {
        let s = P1422_Solution1()
        let input = "00001"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00001'. Expected 5, got \(result).")
    }

    // Test with a symmetric-like mixed pattern.
    // 使用类似对称的混合模式字符串进行测试。
    func testMixedPattern_SymmetricLike() {
        let s = P1422_Solution1()
        let input = "11001100"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11001100'. Expected 4, got \(result).")
    }

    // Test case with alternating values.
    // 使用交替值的测试用例。
    func testMixedPattern_Alternating2() {
        let s = P1422_Solution1()
        let input = "01010"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '01010'. Expected 3, got \(result).")
    }

    // MARK: - Performance and Extreme Cases

    // MARK: - 性能及极限情况测试用例

    // Performance test with a long string of all zeros.
    // 使用全为0的长字符串进行性能测试。
    func testPerformance_AllZeros() {
        let solution = P1422_Solution1()
        let input = String(repeating: "0", count: 500)
        let expected = 499

        measure {
            let result = solution.maxScore(input)
            print("For long string of zeros, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of zeros. Expected 499, got \(result).")
        }
    }

    // Performance test with a long string of all ones.
    // 使用全为1的长字符串进行性能测试。
    func testPerformance_AllOnes() {
        let solution = P1422_Solution1()
        let input = String(repeating: "1", count: 500)
        let expected = 499

        measure {
            let result = solution.maxScore(input)
            print("For long string of ones, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of ones. Expected 499, got \(result).")
        }
    }

    // Performance test with a long alternating string.
    // 使用交替模式的长字符串进行性能测试。
    func testPerformance_Alternating() {
        let solution = P1422_Solution1()
        let input = String(repeating: "01", count: 250) // length 500
        let expected =
            251 // left="0...0", right="1...". For "0101...01", left="0...0" (250 times), right="1". Score=250+1=251

        measure {
            let result = solution.maxScore(input)
            print("For long alternating string, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long alternating string. Expected 251, got \(result).")
        }
    }

    // Performance test with a long string of zeros followed by ones.
    // 使用先是0后是1的长字符串进行性能测试。
    func testPerformance_ZerosThenOnes() {
        let solution = P1422_Solution1()
        let input = String(repeating: "0", count: 250) + String(repeating: "1", count: 250)
        let expected = 500

        measure {
            let result = solution.maxScore(input)
            print("For long string of zeros then ones, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of zeros then ones. Expected 500, got \(result).")
        }
    }
}

final class P1422_Solution2_Tests: XCTestCase {
    // MARK: - Test cases from the problem description

    // MARK: - 从题目描述中提取的测试用例

    // Test case 1 from the description.
    // 题目描述中的测试用例 1。
    func testExample1() {
        let s = P1422_Solution2()
        let input = "011101"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '011101'. Expected 5, got \(result).")
    }

    // Test case 2 from the description.
    // 题目描述中的测试用例 2。
    func testExample2() {
        let s = P1422_Solution2()
        let input = "00111"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00111'. Expected 5, got \(result).")
    }

    // Test case 3 from the description.
    // 题目描述中的测试用例 3。
    func testExample3() {
        let s = P1422_Solution2()
        let input = "1111"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '1111'. Expected 3, got \(result).")
    }

    // MARK: - Boundary test cases

    // MARK: - 边界情况测试用例

    // Test with the minimum length string "00".
    // 使用最小长度字符串 "00" 进行测试。
    func testBoundaryCase_MinLength_00() {
        let s = P1422_Solution2()
        let input = "00"
        let expected = 1
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00'. Expected 1, got \(result).")
    }

    // Test with the minimum length string "01".
    // 使用最小长度字符串 "01" 进行测试。
    func testBoundaryCase_MinLength_01() {
        let s = P1422_Solution2()
        let input = "01"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '01'. Expected 2, got \(result).")
    }

    // Test with the minimum length string "10".
    // 使用最小长度字符串 "10" 进行测试。
    func testBoundaryCase_MinLength_10() {
        let s = P1422_Solution2()
        let input = "10"
        let expected = 0
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '10'. Expected 0, got \(result).")
    }

    // Test with the minimum length string "11".
    // 使用最小长度字符串 "11" 进行测试。
    func testBoundaryCase_MinLength_11() {
        let s = P1422_Solution2()
        let input = "11"
        let expected = 1
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11'. Expected 1, got \(result).")
    }

    // MARK: - All Zeros or All Ones

    // MARK: - 全为0或全为1的测试用例

    // Test with a string of all zeros.
    // 使用全为0的字符串进行测试。
    func testAllZeros_Short() {
        let s = P1422_Solution2()
        let input = "000"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '000'. Expected 2, got \(result).")
    }

    // Test with a longer string of all zeros.
    // 使用较长的全为0的字符串进行测试。
    func testAllZeros_Long() {
        let s = P1422_Solution2()
        let input = "00000"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00000'. Expected 4, got \(result).")
    }

    // Test with a string of all ones.
    // 使用全为1的字符串进行测试。
    func testAllOnes_Short() {
        let s = P1422_Solution2()
        let input = "111"
        let expected = 2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '111'. Expected 2, got \(result).")
    }

    // Test with a longer string of all ones.
    // 使用较长的全为1的字符串进行测试。
    func testAllOnes_Long() {
        let s = P1422_Solution2()
        let input = "11111"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11111'. Expected 4, got \(result).")
    }

    // MARK: - Mixed and Alternating Patterns

    // MARK: - 混合及交替模式的测试用例

    // Test with an alternating pattern starting with '1'.
    // 使用以'1'开头的交替模式字符串进行测试。
    func testAlternatingPattern_StartsWithOne() {
        let s = P1422_Solution2()
        let input = "101010"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '101010'. Expected 3, got \(result).")
    }

    // Test with an alternating pattern starting with '0'.
    // 使用以'0'开头的交替模式字符串进行测试。
    func testAlternatingPattern_StartsWithZero() {
        let s = P1422_Solution2()
        let input = "010101"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '010101'. Expected 4, got \(result).")
    }

    // Test with zeros followed by ones, where the best split is in the middle.
    // 使用先是0后是1的字符串进行测试，最佳分割点在中间。
    func testMixedPattern_ZerosThenOnes() {
        let s = P1422_Solution2()
        let input = "000111"
        let expected = 6
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '000111'. Expected 6, got \(result).")
    }

    // Test with ones followed by zeros, resulting in a low score.
    // 使用先是1后是0的字符串进行测试，得分较低。
    func testMixedPattern_OnesThenZeros() {
        let s = P1422_Solution2()
        let input = "111000"
        let expected = 2 // left="11", right="1000" -> 0+1=1. left="1", right="11000" -> 0+2=2
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '111000'. Expected 2, got \(result).")
    }

    // Test with a complex mixed pattern.
    // 使用复杂的混合模式字符串进行测试。
    func testMixedPattern_Complex1() {
        let s = P1422_Solution2()
        let input = "10001"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '10001'. Expected 4, got \(result).")
    }

    // Test with another complex mixed pattern.
    // 使用另一个复杂的混合模式字符串进行测试。
    func testMixedPattern_Complex2() {
        let s = P1422_Solution2()
        let input = "011001"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '011001'. Expected 4, got \(result).")
    }

    // Test where the optimal split is near the end.
    // 测试最佳分割点在末尾附近的情况。
    func testOptimalSplit_NearEnd() {
        let s = P1422_Solution2()
        let input = "00001"
        let expected = 5
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '00001'. Expected 5, got \(result).")
    }

    // Test with a symmetric-like mixed pattern.
    // 使用类似对称的混合模式字符串进行测试。
    func testMixedPattern_SymmetricLike() {
        let s = P1422_Solution2()
        let input = "11001100"
        let expected = 4
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '11001100'. Expected 4, got \(result).")
    }

    // Test case with alternating values.
    // 使用交替值的测试用例。
    func testMixedPattern_Alternating2() {
        let s = P1422_Solution2()
        let input = "01010"
        let expected = 3
        let result = s.maxScore(input)
        print("For input '\(input)', the max score is \(result)")
        XCTAssertEqual(result, expected, "Failed on input '01010'. Expected 3, got \(result).")
    }

    // MARK: - Performance and Extreme Cases

    // MARK: - 性能及极限情况测试用例

    // Performance test with a long string of all zeros.
    // 使用全为0的长字符串进行性能测试。
    func testPerformance_AllZeros() {
        let solution = P1422_Solution2()
        let input = String(repeating: "0", count: 500)
        let expected = 499

        measure {
            let result = solution.maxScore(input)
            print("For long string of zeros, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of zeros. Expected 499, got \(result).")
        }
    }

    // Performance test with a long string of all ones.
    // 使用全为1的长字符串进行性能测试。
    func testPerformance_AllOnes() {
        let solution = P1422_Solution2()
        let input = String(repeating: "1", count: 500)
        let expected = 499

        measure {
            let result = solution.maxScore(input)
            print("For long string of ones, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of ones. Expected 499, got \(result).")
        }
    }

    // Performance test with a long alternating string.
    // 使用交替模式的长字符串进行性能测试。
    func testPerformance_Alternating() {
        let solution = P1422_Solution2()
        let input = String(repeating: "01", count: 250) // length 500
        let expected =
            251 // left="0...0", right="1...". For "0101...01", left="0...0" (250 times), right="1". Score=250+1=251

        measure {
            let result = solution.maxScore(input)
            print("For long alternating string, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long alternating string. Expected 251, got \(result).")
        }
    }

    // Performance test with a long string of zeros followed by ones.
    // 使用先是0后是1的长字符串进行性能测试。
    func testPerformance_ZerosThenOnes() {
        let solution = P1422_Solution2()
        let input = String(repeating: "0", count: 250) + String(repeating: "1", count: 250)
        let expected = 500

        measure {
            let result = solution.maxScore(input)
            print("For long string of zeros then ones, the max score is \(result)")
            XCTAssertEqual(result, expected, "Failed on long string of zeros then ones. Expected 500, got \(result).")
        }
    }
}
