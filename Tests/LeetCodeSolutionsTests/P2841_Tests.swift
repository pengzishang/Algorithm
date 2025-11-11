import XCTest
@testable import LeetCodeSolutions

final class P2841_Solution1_Tests: XCTestCase {
    func testExample_1() {
        // LeetCode 示例 1
        // LeetCode Example 1
        let s = P2841_Solution1()
        let nums = [2, 6, 7, 3, 1, 7]
        let m = 3
        let k = 4
        let expected: Int64 = 18
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testExample_2() {
        // LeetCode 示例 2
        // LeetCode Example 2
        let s = P2841_Solution1()
        let nums = [5, 9, 9, 2, 4, 5, 4]
        let m = 1
        let k = 3
        let expected: Int64 = 23
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testExample_3() {
        // LeetCode 示例 3
        // LeetCode Example 3
        let s = P2841_Solution1()
        let nums = [1, 2, 1, 2, 1, 2, 1]
        let m = 3
        let k = 3
        let expected: Int64 = 0
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMKEqual_AllUniqueWindow_4() {
        // m 和 k 相等，窗口内所有元素都唯一
        // m equals k, all elements in the window are unique
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let m = 3
        let k = 3
        let expected: Int64 = 12 // [3,4,5]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMKEqual_SomeInvalidWindows_5() {
        // m 和 k 相等，部分窗口不满足唯一性要求
        // m equals k, some windows do not meet uniqueness requirement
        let s = P2841_Solution1()
        let nums = [1, 1, 2, 3, 4]
        let m = 3
        let k = 3
        let expected: Int64 = 9 // [2,3,4]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMIsOne_AnySubarrayIsValid_6() {
        // m = 1，任何长度为 k 的子数组都有效
        // m = 1, any subarray of length k is valid
        let s = P2841_Solution1()
        let nums = [1, 1, 1, 5, 1, 1]
        let m = 1
        let k = 3
        let expected: Int64 = 7 // [1,5,1]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testKEqualsNumsLength_Valid_7() {
        // k 等于数组长度，且满足条件
        // k equals array length and is valid
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let m = 3
        let k = 5
        let expected: Int64 = 15
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testKEqualsNumsLength_Invalid_8() {
        // k 等于数组长度，但不满足条件
        // k equals array length but is invalid
        let s = P2841_Solution1()
        let nums = [1, 1, 1, 1, 1]
        let m = 2
        let k = 5
        let expected: Int64 = 0
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testAllElementsSame_Invalid_9() {
        // 所有元素相同，无法满足 m > 1 的条件
        // All elements are the same, cannot satisfy m > 1
        let s = P2841_Solution1()
        let nums = [5, 5, 5, 5, 5, 5]
        let m = 2
        let k = 4
        let expected: Int64 = 0
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testAllElementsDifferent_10() {
        // 所有元素都不同
        // All elements are different
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 4, 5, 6]
        let m = 3
        let k = 4
        let expected: Int64 = 18 // [3,4,5,6]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMultipleValidSubarrays_11() {
        // 存在多个有效子数组，需要找到和最大的
        // Multiple valid subarrays exist, need to find the one with the maximum sum
        let s = P2841_Solution1()
        let nums = [1, 5, 2, 4, 3, 5]
        let m = 3
        let k = 3
        let expected: Int64 = 12 // [4,3,5]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testNoValidSubarrayAtStart_12() {
        // 有效子数组出现在数组后面
        // Valid subarray appears later in the array
        let s = P2841_Solution1()
        let nums = [1, 1, 1, 2, 3, 4]
        let m = 3
        let k = 4
        let expected: Int64 = 10 // [1,2,3,4]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testExactlyMDistinctElements_13() {
        // 最大和的子数组恰好有 m 个不同元素
        // The subarray with the maximum sum has exactly m distinct elements
        let s = P2841_Solution1()
        let nums = [1, 2, 2, 3, 3, 4]
        let m = 2
        let k = 3
        let expected: Int64 = 10 // [3,3,4]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testLargeNumbers_14() {
        // 数组中包含大数值
        // Array contains large numbers
        let s = P2841_Solution1()
        let nums = [1_000_000_000, 999_999_999, 1, 2]
        let m = 3
        let k = 3
        let expected: Int64 = 2_000_000_000 // [1_000_000_000, 999_999_999, 1]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testSingleElementArray_15() {
        // 数组只有一个元素
        // Array with a single element
        let s = P2841_Solution1()
        let nums = [100]
        let m = 1
        let k = 1
        let expected: Int64 = 100
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMCloseToK_16() {
        // m 的值接近 k
        // m is close to k
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 1, 2, 3, 1, 2, 3]
        let m = 3
        let k = 4
        let expected: Int64 = 9 // [3,1,2,3] and [3,1,2,3]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMCloseToK_OneValidWindow_17() {
        // m 的值接近 k，只有一个窗口有效
        // m is close to k, only one window is valid
        let s = P2841_Solution1()
        let nums = [4, 4, 4, 1, 2, 3]
        let m = 3
        let k = 4
        let expected: Int64 = 10 // [4,1,2,3]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testZeroResult_NotEnoughDistinctElements_18() {
        // 结果为0，因为没有窗口有足够的唯一元素
        // Result is 0 because no window has enough distinct elements
        let s = P2841_Solution1()
        let nums = [1, 1, 2, 2, 1, 1]
        let m = 3
        let k = 4
        let expected: Int64 = 0
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testSlidingWindowCountChanges_19() {
        // 滑动窗口过程中，唯一元素计数发生变化
        // Distinct element count changes during sliding window process
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 2, 1, 4]
        let m = 3
        let k = 3
        let expected: Int64 = 7 // [2,1,4]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testMEqualsK_DescendingOrder_20() {
        // m 和 k 相等，数组降序
        // m equals k, array in descending order
        let s = P2841_Solution1()
        let nums = [9, 8, 7, 6, 5, 4]
        let m = 4
        let k = 4
        let expected: Int64 = 30 // [9,8,7,6]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testKIsSmall_21() {
        // k 的值很小
        // k is small
        let s = P2841_Solution1()
        let nums = [1, 10, 100, 1000, 100, 10, 1]
        let m = 2
        let k = 2
        let expected: Int64 = 1100 // [100,1000] and [1000,100]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testFirstWindowIsMax_22() {
        // 第一个窗口就是最大和
        // The first window has the maximum sum
        let s = P2841_Solution1()
        let nums = [10, 9, 8, 1, 2, 3]
        let m = 3
        let k = 3
        let expected: Int64 = 27 // [10,9,8]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }
    
    func testLastWindowIsMax_23() {
        // 最后一个窗口是最大和
        // The last window has the maximum sum
        let s = P2841_Solution1()
        let nums = [1, 2, 3, 8, 9, 10]
        let m = 3
        let k = 3
        let expected: Int64 = 27 // [8,9,10]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for nums: \(nums), m: \(m), k: \(k)")
    }

    func testPerformance_LargeArrayAllSame_24() {
        // 性能测试：大数组，所有元素相同
        // Performance test: large array, all elements are the same
        let s = P2841_Solution1()
        let nums = Array(repeating: 1, count: 20000)
        let m = 2
        let k = 1000
        let expected: Int64 = 0
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for large array with same elements")
    }

    func testPerformance_LargeArrayIncreasing_25() {
        // 性能测试：大数组，元素递增
        // Performance test: large array, increasing elements
        let s = P2841_Solution1()
        let nums = Array(1...20000)
        let m = 5000
        let k = 10000
        let expected: Int64 = 150005000 // Sum of [10001, ..., 20000]
        let result = s.maxSum(nums, m, k)
        print(result)
        XCTAssertEqual(result, expected, "Failed for large increasing array")
    }
}