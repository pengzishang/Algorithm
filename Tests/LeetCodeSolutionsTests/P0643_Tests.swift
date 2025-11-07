@testable import LeetCodeSolutions
import XCTest

final class P0643_Solution1_Tests: XCTestCase {
    // 示例 1 / Example 1
    func testExample_1() {
        let s = P0643_Solution1()
        let nums = [1, 12, -5, -6, 50, 3]
        let k = 4
        let expected = 12.75
        let result = s.findMaxAverage(nums, k)
        print("testExample_1 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "测试用例 1 失败 / Failed on Example 1")
    }

    // 示例 2 / Example 2
    func testExample_2() {
        let s = P0643_Solution1()
        let nums = [5]
        let k = 1
        let expected = 5.0
        let result = s.findMaxAverage(nums, k)
        print("testExample_2 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "测试用例 2 失败 / Failed on Example 2")
    }

    // 自定义用例 3: 全部是负数 / Custom case 3: All negative numbers
    func testAllNegativeNumbers_3() {
        let s = P0643_Solution1()
        let nums = [-10, -1, -2, -3, -4]
        let k = 3
        let expected: Double = -2.0
        let result = s.findMaxAverage(nums, k)
        print("testAllNegativeNumbers_3 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "全部是负数的测试用例失败 / Failed on all negative numbers test")
    }

    // 自定义用例 4: k 等于数组长度 / Custom case 4: k equals array length
    func testKEqualsArrayLength_4() {
        let s = P0643_Solution1()
        let nums = [1, 2, 3, 4, 5]
        let k = 5
        let expected = 3.0
        let result = s.findMaxAverage(nums, k)
        print("testKEqualsArrayLength_4 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "k 等于数组长度的测试用例失败 / Failed when k equals array length")
    }

    // 自定义用例 5: k 等于 1 / Custom case 5: k is 1
    func testKIsOne_5() {
        let s = P0643_Solution1()
        let nums = [-10, 20, -30, 40, -50]
        let k = 1
        let expected = 40.0
        let result = s.findMaxAverage(nums, k)
        print("testKIsOne_5 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "k 等于 1 的测试用例失败 / Failed when k is 1")
    }

    // 自定义用例 6: 包含零 / Custom case 6: Contains zeros
    func testContainsZeros_6() {
        let s = P0643_Solution1()
        let nums = [0, 4, 0, 3, 2]
        let k = 3
        let expected = 2.33333
        let result = s.findMaxAverage(nums, k)
        print("testContainsZeros_6 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "包含零的测试用例失败 / Failed on test with zeros")
    }

    // 自定义用例 7: 第一个子数组是最大平均数 / Custom case 7: First subarray has max average
    func testFirstSubarrayIsMax_7() {
        let s = P0643_Solution1()
        let nums = [50, 3, -100, -200, -300]
        let k = 2
        let expected = 26.5
        let result = s.findMaxAverage(nums, k)
        print("testFirstSubarrayIsMax_7 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "第一个子数组是最大平均数的测试用例失败 / Failed when the first subarray is max")
    }

    // 自定义用例 8: 最后一个子数组是最大平均数 / Custom case 8: Last subarray has max average
    func testLastSubarrayIsMax_8() {
        let s = P0643_Solution1()
        let nums = [-100, -200, -300, 50, 3]
        let k = 2
        let expected = 26.5
        let result = s.findMaxAverage(nums, k)
        print("testLastSubarrayIsMax_8 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "最后一个子数组是最大平均数的测试用例失败 / Failed when the last subarray is max")
    }

    // 自定义用例 9: 所有元素相同 / Custom case 9: All elements are the same
    func testAllElementsSame_9() {
        let s = P0643_Solution1()
        let nums = [8, 8, 8, 8, 8]
        let k = 3
        let expected = 8.0
        let result = s.findMaxAverage(nums, k)
        print("testAllElementsSame_9 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "所有元素相同的测试用例失败 / Failed when all elements are the same")
    }

    // 自定义用例 10: 正负交替 / Custom case 10: Alternating positive and negative numbers
    func testAlternatingNumbers_10() {
        let s = P0643_Solution1()
        let nums = [10, -10, 10, -10, 10, -10]
        let k = 2
        let expected = 0.0
        let result = s.findMaxAverage(nums, k)
        print("testAlternatingNumbers_10 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "正负交替的测试用例失败 / Failed on alternating numbers test")
    }

    // 自定义用例 11: 正负交替，k为奇数 / Custom case 11: Alternating positive and negative numbers with odd k
    func testAlternatingNumbersOddK_11() {
        let s = P0643_Solution1()
        let nums = [10, -5, 10, -5, 10, -5]
        let k = 3
        let expected = 5.0
        let result = s.findMaxAverage(nums, k)
        print("testAlternatingNumbersOddK_11 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5,
                       "正负交替且k为奇数的测试用例失败 / Failed on alternating numbers with odd k test")
    }

    // 自定义用例 12: 包含边界值 / Custom case 12: Contains boundary values
    func testBoundaryValues_12() {
        let s = P0643_Solution1()
        let nums = [10000, -10000, 10000, -10000]
        let k = 2
        let expected = 0.0
        let result = s.findMaxAverage(nums, k)
        print("testBoundaryValues_12 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "包含边界值的测试用例失败 / Failed on boundary values test")
    }

    // 自定义用例 13: 较长数组，中间最大 / Custom case 13: Longer array, max in the middle
    func testLongerArrayMiddleMax_13() {
        let s = P0643_Solution1()
        let nums = [-10, 0, 10, 20, 30, 20, 10, 0, -10]
        let k = 3
        let expected = 23.33333
        let result = s.findMaxAverage(nums, k)
        print("testLongerArrayMiddleMax_13 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5,
                       "较长数组且最大值在中间的测试用例失败 / Failed on longer array with max in the middle")
    }

    // 自定义用例 14: 递增序列 / Custom case 14: Increasing sequence
    func testIncreasingSequence_14() {
        let s = P0643_Solution1()
        let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let k = 4
        let expected = 8.5
        let result = s.findMaxAverage(nums, k)
        print("testIncreasingSequence_14 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "递增序列的测试用例失败 / Failed on increasing sequence test")
    }

    // 自定义用例 15: 递减序列 / Custom case 15: Decreasing sequence
    func testDecreasingSequence_15() {
        let s = P0643_Solution1()
        let nums = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        let k = 4
        let expected = 8.5
        let result = s.findMaxAverage(nums, k)
        print("testDecreasingSequence_15 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "递减序列的测试用例失败 / Failed on decreasing sequence test")
    }

    // 自定义用例 16: 双峰数组 / Custom case 16: Bimodal array
    func testBimodalArray_16() {
        let s = P0643_Solution1()
        let nums = [1, 5, 2, 8, 3, 9, 4]
        let k = 3
        let expected = 6.66666
        let result = s.findMaxAverage(nums, k)
        print("testBimodalArray_16 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "双峰数组的测试用例失败 / Failed on bimodal array test")
    }

    // 自定义用例 17: 平均值为0 / Custom case 17: Average is zero
    func testAverageIsZero_17() {
        let s = P0643_Solution1()
        let nums = [1, -1, 2, -2, 3, -3]
        let k = 2
        let expected = 0.5
        let result = s.findMaxAverage(nums, k)
        print("testAverageIsZero_17 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "平均值为0的测试用例失败 / Failed when average is zero")
    }

    // 自定义用例 18: 结果为负小数 / Custom case 18: Negative fractional result
    func testNegativeFractionalResult_18() {
        let s = P0643_Solution1()
        let nums = [-5, -6, -7, 1, 2]
        let k = 3
        let expected: Double = -1.33333
        let result = s.findMaxAverage(nums, k)
        print("testNegativeFractionalResult_18 result: \(result)")
        XCTAssertEqual(result, expected, accuracy: 1e-5, "结果为负小数的测试用例失败 / Failed on negative fractional result")
    }

    // 性能测试 19: n=10^5, k=n, 递增序列. 5秒超时. / Performance test 19: n=10^5, k=n, increasing sequence. 5s timeout.
    func testPerformanceWithMaxNMaxKIncreasing_19() {
        let s = P0643_Solution1()
        let nums = Array(1 ... 100_000)
        let k = 100_000
        let expected = 50000.5
        measure {
            let result = s.findMaxAverage(nums, k)
            print("testPerformanceWithMaxNMaxKIncreasing_19 result: \(result)")
            XCTAssertEqual(result, expected, accuracy: 1e-5,
                           "n=10^5, k=n, 递增序列的性能测试失败 / Failed on max N, max K, increasing sequence performance test")
        }
    }

    // 性能测试 20: n=10^5, k=5*10^4, 随机数. 5秒超时. / Performance test 20: n=10^5, k=5*10^4, random numbers. 5s timeout.
    func testPerformanceWithMaxNMediumKRandom_20() {
        let s = P0643_Solution1()
        let nums = (1 ... 100_000).map { _ in Int.random(in: -10000 ... 10000) }
        let k = 50000
        measure {
            // 我们无法预测确切结果，但可以确保它在范围内运行且不崩溃 / We cannot predict the exact result, but we can ensure it runs within limits
            // and does not crash.
            let result = s.findMaxAverage(nums, k)
            print("testPerformanceWithMaxNMediumKRandom_20 result: \(result)")
            XCTAssert(result >= -10000.0 && result <= 10000.0,
                      "n=10^5, k=5*10^4, 随机数的性能测试失败 / Result out of bounds for max N, medium K, random numbers performance test")
        }
    }

    // 性能测试 21: n=10^5, k=100, 随机数. 5秒超时. / Performance test 21: n=10^5, k=100, random numbers. 5s timeout.
    func testPerformanceWithMaxNSmallKRandom_21() {
        let s = P0643_Solution1()
        let nums = (1 ... 100_000).map { _ in Int.random(in: -10000 ... 10000) }
        let k = 100
        measure {
            // 我们无法预测确切结果，但可以确保它在范围内运行且不崩溃 / We cannot predict the exact result, but we can ensure it runs within limits
            // and does not crash.
            let result = s.findMaxAverage(nums, k)
            print("testPerformanceWithMaxNSmallKRandom_21 result: \(result)")
            XCTAssert(result >= -10000.0 && result <= 10000.0,
                      "n=10^5, k=100, 随机数的性能测试失败 / Result out of bounds for max N, small K, random numbers performance test")
        }
    }

    // 性能测试 22: n=10^5, k=n/2, 全是最大值. 5秒超时. / Performance test 22: n=10^5, k=n/2, all max values. 5s timeout.
    func testPerformanceWithMaxNAllMaxValues_22() {
        let s = P0643_Solution1()
        let nums = [Int](repeating: 10000, count: 100_000)
        let k = 50000
        let expected = 10000.0
        measure {
            let result = s.findMaxAverage(nums, k)
            print("testPerformanceWithMaxNAllMaxValues_22 result: \(result)")
            XCTAssertEqual(result, expected, accuracy: 1e-5,
                           "n=10^5, k=n/2, 全是最大值的性能测试失败 / Failed on max N, all max values performance test")
        }
    }
}
