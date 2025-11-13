@testable import LeetCodeSolutions
import XCTest

final class P2461_Solution1_Tests: XCTestCase {
    // LeetCode Example 1
    // LeetCode 示例 1
    func testExample1() {
        let s = P2461_Solution1()
        let nums = [1, 5, 4, 2, 9, 9, 9]
        let k = 3
        let expected = 15
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The maximum sum for nums = [1,5,4,2,9,9,9], k = 3 should be 15.")
    }

    // LeetCode Example 2
    // LeetCode 示例 2
    func testExample2() {
        let s = P2461_Solution1()
        let nums = [4, 4, 4]
        let k = 3
        let expected = 0
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected,
                       "The maximum sum for nums = [4,4,4], k = 3 should be 0 as there are no valid subarrays.")
    }

    // Test case where the maximum sum subarray is at the end of the array.
    // 测试最大和子数组在数组末尾的情况。
    func testMaxSumAtTheEnd() {
        let s = P2461_Solution1()
        let nums = [9, 9, 9, 1, 2, 3]
        let k = 3
        let expected = 12
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The valid subarray [1,2,3] at the end should produce the maximum sum of 6.")
    }

    // Test case where the maximum sum subarray is at the beginning of the array.
    // 测试最大和子数组在数组开头的情况。
    func testMaxSumAtTheBeginning() {
        let s = P2461_Solution1()
        let nums = [1, 2, 3, 9, 9, 9]
        let k = 3
        let expected = 14
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected,
                       "The valid subarray [1,2,3] at the beginning should produce the maximum sum of 6.")
    }

    // Test case where all possible subarrays have duplicate elements.
    // 测试所有可能的子数组都包含重复元素的情况。
    func testAllSubarraysHaveDuplicates() {
        let s = P2461_Solution1()
        let nums = [1, 1, 2, 2, 3, 3]
        let k = 2
        let expected = 5
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "No valid subarray exists, so the result should be 0.")
    }

    // Test case where k is equal to the length of the array and all elements are distinct.
    // 测试 k 等于数组长度且所有元素都唯一的情况。
    func testKEqualsArrayLengthWithDistinctElements() {
        let s = P2461_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 5
        let expected = 15
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The entire array is a valid subarray, sum should be 15.")
    }

    // Test case where k is equal to the length of the array but there are duplicate elements.
    // 测试 k 等于数组长度但存在重复元素的情况。
    func testKEqualsArrayLengthWithDuplicateElements() {
        let s = P2461_Solution1()
        let nums = [1, 2, 3, 4, 1]
        let k = 5
        let expected = 0
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected,
                       "The entire array is not a valid subarray due to duplicates, result should be 0.")
    }

    // Test case where k is 1 and the array has a single element.
    // 测试 k=1 且数组只有一个元素的情况。
    func testKIsOneWithSingleElement() {
        let s = P2461_Solution1()
        let nums = [100]
        let k = 1
        let expected = 100
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "For k=1, the max sum is the max element in the array, which is 100.")
    }

    // Test case where k is 1 and the array has multiple elements.
    // 测试 k=1 且数组有多个元素的情况。
    func testKIsOneWithMultipleElements() {
        let s = P2461_Solution1()
        let nums = [1, 5, 2, 6, 8]
        let k = 1
        let expected = 8
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "For k=1, the max sum is the max element in the array, which is 8.")
    }

    // A more complex case with several valid and invalid subarrays.
    // 一个更复杂的案例，包含多个有效和无效的子数组。
    func testComplexCaseWithSomeValidSubarrays() {
        let s = P2461_Solution1()
        let nums = [1, 2, 1, 3, 1, 4, 1, 5]
        let k = 3
        let expected = 10 // Subarray [4,1,5]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The maximum sum should come from subarray [4,1,5].")
    }

    // Test case where a valid subarray is at the beginning, followed by duplicates.
    // 测试一个有效的子数组在开头，后面跟着重复项的情况。
    func testValidSubarrayAtBeginningFollowedByDuplicates() {
        let s = P2461_Solution1()
        let nums = [5, 3, 1, 1, 1]
        let k = 2
        let expected = 8 // Subarray [5,3]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The first subarray [5,3] is valid and should be the maximum.")
    }

    // Test case where all elements are identical, resulting in no valid subarrays.
    // 测试所有元素都相同，导致没有有效子数组的情况。
    func testAllElementsIdenticalAndInvalid() {
        let s = P2461_Solution1()
        let nums = [2, 2, 2, 2, 2]
        let k = 2
        let expected = 0
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "Since all elements are the same, no subarray of length > 1 can be valid.")
    }

    // Test case with strictly increasing numbers, where all subarrays are valid.
    // 测试严格递增的数字，所有子数组都有效。
    func testIncreasingNumbersAllSubarraysValid() {
        let s = P2461_Solution1()
        let nums = [1, 10, 100, 1000, 10000]
        let k = 2
        let expected = 11000 // Subarray [1000, 10000]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The last subarray [1000, 10000] should have the maximum sum.")
    }

    // Test case with strictly decreasing numbers, where all subarrays are valid.
    // 测试严格递减的数字，所有子数组都有效。
    func testDecreasingNumbersAllSubarraysValid() {
        let s = P2461_Solution1()
        let nums = [10000, 1000, 100, 10, 1]
        let k = 2
        let expected = 11000 // Subarray [10000, 1000]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The first subarray [10000, 1000] should have the maximum sum.")
    }

    // Test case where the maximum sum subarray is in the middle.
    // 测试最大和子数组在中间的情况。
    func testIntermediateValidSubarray() {
        let s = P2461_Solution1()
        let nums = [6, 2, 7, 4, 8, 1, 5]
        let k = 4
        let expected = 21 // Subarray [2,7,4,8]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The subarray [2,7,4,8] in the middle should have the max sum of 21.")
    }

    // Test case with overlapping numbers between windows, causing some to be invalid.
    // 测试窗口之间有重叠数字，导致某些窗口无效的情况。
    func testOverlappingNumbersBetweenWindows() {
        let s = P2461_Solution1()
        let nums = [10, 20, 30, 10, 20, 40]
        let k = 3
        let expected = 70 // Subarray [10,20,40]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The last valid subarray [10,20,40] has the max sum.")
    }

    // Simple test case with an increasing sequence.
    // 简单的递增序列测试用例。
    func testSimpleIncreasingSequence() {
        let s = P2461_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 2
        let expected = 9 // Subarray [4,5]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "For a simple increasing sequence, the last subarray should have the max sum.")
    }

    // Simple test case with a decreasing sequence.
    // 简单的递减序列测试用例。
    func testSimpleDecreasingSequence() {
        let s = P2461_Solution1()
        let nums = [5, 4, 3, 2, 1]
        let k = 2
        let expected = 9 // Subarray [5,4]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected,
                       "For a simple decreasing sequence, the first subarray should have the max sum.")
    }

    // Test case with a repeating pattern of numbers.
    // 测试数字重复模式的情况。
    func testRepeatingPattern() {
        let s = P2461_Solution1()
        let nums = [1, 2, 3, 1, 2, 3, 4]
        let k = 3
        let expected = 9 // Subarray [2,3,4]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The last subarray [2,3,4] should provide the max sum.")
    }

    // Test case where a valid subarray appears after many duplicates.
    // 测试在许多重复项之后出现有效子数组的情况。
    func testAValidSubarrayAfterManyDuplicates() {
        let s = P2461_Solution1()
        let nums = [4, 4, 4, 4, 1, 2, 3]
        let k = 4
        let expected = 10 // Subarray [4,1,2,3]
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "The only valid subarray is [4,1,2,3] with sum 10.")
    }

    // Test case with large numbers close to the constraint limit.
    // 测试接近约束限制的大数字。
    func testLargeNumbers() {
        let s = P2461_Solution1()
        let nums = [100_000, 99999, 99998]
        let k = 3
        let expected = 299_997
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: nums = \(nums), k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "Test with large numbers should pass.")
    }

    // Test case with a long array to check for performance issues (Time Limit Exceeded).
    // 使用长数组测试性能问题（超时）。
    func testLongArrayWithPattern() {
        let s = P2461_Solution1()
        let nums = Array(1 ... 2000) + Array(1 ... 2000)
        let k = 100
        // The max sum will be from the subarray [1901...2000]
        // Sum = (1901 + 2000) * 100 / 2 = 3901 * 50 = 195050
        let expected = 195_050
        let result = s.maximumSubarraySum(nums, k)
        print("Test Case: \(#function), Input: long array, k = \(k), Expected: \(expected), Result: \(result)")
        XCTAssertEqual(result, expected, "Performance test with a long array should pass and give the correct max sum.")
    }
}
