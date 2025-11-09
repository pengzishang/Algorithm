import XCTest
@testable import LeetCodeSolutions

final class P2090_Solution1_Tests: XCTestCase {
    // MARK: - Test Cases from Examples
    // MARK: - 从示例中提取的测试用例

    // Test case from example 1
    // 示例 1 的测试用例
    func testExample1() {
        let s = P2090_Solution1()
        let nums = [7, 4, 3, 9, 1, 8, 5, 2, 6]
        let k = 3
        let expected = [-1, -1, -1, 5, 4, 4, -1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 1")
    }

    // Test case from example 2
    // 示例 2 的测试用例
    func testExample2() {
        let s = P2090_Solution1()
        let nums = [100000]
        let k = 0
        let expected = [100000]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 2")
    }

    // Test case from example 3
    // 示例 3 的测试用例
    func testExample3() {
        let s = P2090_Solution1()
        let nums = [8]
        let k = 100000
        let expected = [-1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 3")
    }

    // MARK: - Additional Test Cases
    // MARK: - 额外的测试用例

    // Test case where k is 0 with a larger array
    // k 为 0 且数组长度较大的测试用例
    func testKIsZeroWithLargerArray_1() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 0
        let expected = [1, 2, 3, 4, 5]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k is 0")
    }

    // Test case where k is large, so the entire output should be -1
    // k 较大，导致整个输出都应为 -1 的测试用例
    func testKLargerThanArrayRadius_2() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 3
        let expected = [-1, -1, -1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k is large resulting in all -1s")
    }

    // Test case where the window size (2*k+1) is equal to the array length
    // 窗口大小（2*k+1）等于数组长度的测试用例
    func testWindowSizeEqualsArrayLength_3() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 2
        let expected = [-1, -1, 3, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when 2*k+1 == n")
    }
    
    // Test case with all elements being the same
    // 所有元素都相同的测试用例
    func testAllElementsAreSame_4() {
        let s = P2090_Solution1()
        let nums = [5, 5, 5, 5, 5, 5]
        let k = 1
        let expected = [-1, 5, 5, 5, 5, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with all same numbers")
    }
    
    // Test case with an array containing zeros
    // 数组包含零的测试用例
    func testArrayContainsZeros_5() {
        let s = P2090_Solution1()
        let nums = [1, 0, 2, 0, 3, 0]
        let k = 1
        let expected = [-1, 1, 0, 1, 1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with array containing zeros")
    }
    
    // Simple test case with k = 1
    // k=1 的简单测试用例
    func testSimpleCaseWithKOne_6() {
        let s = P2090_Solution1()
        let nums = [1, 3, 2, 6, 8]
        let k = 1
        let expected = [-1, 2, 3, 5, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on a simple case with k=1")
    }
    
    // Test case where k is half of the array length minus one
    // k 等于数组长度一半减一的测试用例
    func testKIsHalfOfArrayLengthMinusOne_7() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3, 4, 5, 6]
        let k = 2
        let expected = [-1, -1, 3, 4, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k is (n/2)-1")
    }
    
    // Test case with large numbers
    // 包含大数值的测试用例
    func testLargeNumbers_8() {
        let s = P2090_Solution1()
        let nums = [100000, 100000, 100000]
        let k = 1
        let expected = [-1, 100000, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with large numbers")
    }
    
    // Test case where k is almost as large as n
    // k 几乎与 n 一样大的测试用例
    func testKAlmostAsLargeAsN_9() {
        let s = P2090_Solution1()
        let nums = [1, 1, 1, 1, 100]
        let k = 3
        let expected = [-1, -1, -1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k is almost as large as n")
    }
    
    // A slightly more complex sliding window case
    // 一个稍复杂的滑动窗口测试用例
    func testComplexSlidingWindow_10() {
        let s = P2090_Solution1()
        let nums = [10, 20, 30, 40, 50, 60, 70, 80]
        let k = 2
        let expected = [-1, -1, 30, 40, 50, 60, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on a more complex sliding window case")
    }
    
    // Test case where k equals n - 1
    // k 等于 n-1 的测试用例
    func testKEqualsNMinusOne_11() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3]
        let k = 2
        let expected = [-1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k = n-1")
    }

    // Test case where k is greater than n
    // k 大于 n 的测试用例
    func testKGreaterThanN_12() {
        let s = P2090_Solution1()
        let nums = [1, 2, 3]
        let k = 5
        let expected = [-1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed when k > n")
    }
    
    // Test case with alternating small and large numbers
    // 包含交替大小数值的测试用例
    func testAlternatingNumbers_13() {
        let s = P2090_Solution1()
        let nums = [1, 100, 2, 200, 3, 300]
        let k = 1
        let expected = [-1, 34, 100, 68, 167, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with alternating numbers")
    }

    // Test case with a single element and k = 0
    // 单个元素且 k=0 的测试用例
    func testSingleElementKIsZero_14() {
        let s = P2090_Solution1()
        let nums = [5]
        let k = 0
        let expected = [5]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with single element and k=0")
    }

    // Test case with two elements and k = 0
    // 两个元素且 k=0 的测试用例
    func testTwoElementsKIsZero_15() {
        let s = P2090_Solution1()
        let nums = [5, 10]
        let k = 0
        let expected = [5, 10]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with two elements and k=0")
    }
    
    // Test case with two elements and k = 1
    // 两个元素且 k=1 的测试用例
    func testTwoElementsKIsOne_16() {
        let s = P2090_Solution1()
        let nums = [5, 10]
        let k = 1
        let expected = [-1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed with two elements and k=1")
    }

    // Test case to verify integer truncation
    // 验证整数截断的测试用例
    func testResultIntegerTruncation_17() {
        let s = P2090_Solution1()
        let nums = [1, 1, 1, 1, 3]
        let k = 2
        // sum = 1+1+1+1+3 = 7. avg = 7/5 = 1.4 -> 1
        let expected = [-1, -1, 1, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on integer truncation logic")
    }
    
    // Another normal case with different values
    // 另一个具有不同值的普通测试用例
    func testAnotherNormalCase_18() {
        let s = P2090_Solution1()
        let nums = [9, 8, 7, 6, 5, 4, 3, 2, 1]
        let k = 2
        // i=2: (9+8+7+6+5)/5 = 35/5 = 7
        // i=3: (8+7+6+5+4)/5 = 30/5 = 6
        // i=4: (7+6+5+4+3)/5 = 25/5 = 5
        // i=5: (6+5+4+3+2)/5 = 20/5 = 4
        // i=6: (5+4+3+2+1)/5 = 15/5 = 3
        let expected = [-1, -1, 7, 6, 5, 4, 3, -1, -1]
        let result = s.getAverages(nums, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed on another normal case")
    }

    // MARK: - Performance Test Cases
    // MARK: - 性能测试用例
    
    // Performance test with large n and small k
    // 大 n 小 k 的性能测试用例
    func testPerformanceWithLargeNAndSmallK_19() {
        let s = P2090_Solution1()
        let n = 100000
        let k = 100
        let nums = Array(repeating: 10, count: n)
        var expected = Array(repeating: -1, count: n)
        if n >= 2 * k + 1 {
            for i in k..<(n - k) {
                expected[i] = 10
            }
        }
        
        // Using measure block to check performance
        // 使用 measure 块来检查性能
        self.measure {
            let result = s.getAverages(nums, k)
            XCTAssertEqual(result, expected, "Failed on performance test with large n and small k")
        }
    }
    
    // Performance test with large n and large k
    // 大 n 大 k 的性能测试用例
    func testPerformanceWithLargeNAndLargeK_20() {
        let s = P2090_Solution1()
        let n = 100000
        let k = 40000
        let nums = Array(0..<n)
        var expected = Array(repeating: -1, count: n)
        
        // Pre-calculate expected values for assertion
        // 预计算期望值用于断言
        if n >= 2 * k + 1 {
            var currentSum = 0
            for i in 0..<(2 * k + 1) {
                currentSum += nums[i]
            }
            
            for i in k..<(n - k) {
                expected[i] = currentSum / (2 * k + 1)
                if i + k + 1 < n {
                    currentSum -= nums[i - k]
                    currentSum += nums[i + k + 1]
                }
            }
        }

        // Using measure block to check performance
        // 使用 measure 块来检查性能
        self.measure {
            let result = s.getAverages(nums, k)
            XCTAssertEqual(result, expected, "Failed on performance test with large n and large k")
        }
    }
}