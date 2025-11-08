import XCTest
@testable import LeetCodeSolutions

final class P1343_Solution1_Tests: XCTestCase {

    // Test case 1: From example 1.
    // 测试用例 1: 来自示例 1。
    func testExample1_1() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [2,2,2,2,5,5,5,8]
        let k = 3
        let threshold = 4
        let expected = 3
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testExample1_1 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 2: From example 2.
    // 测试用例 2: 来自示例 2。
    func testExample2_2() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [11,13,17,23,29,31,7,5,2,3]
        let k = 3
        let threshold = 5
        let expected = 6
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testExample2_2 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 3: No subarrays match because the threshold is too high.
    // 测试用例 3: 因为阈值太高，没有子数组满足条件。
    func testNoSubarraysMatch_3() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1,2,3,4,5]
        let k = 3
        let threshold = 10
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testNoSubarraysMatch_3 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 4: All subarrays match because the threshold is zero.
    // 测试用例 4: 因为阈值为零，所有子数组都满足条件。
    func testAllSubarraysMatch_4() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1,2,3,4,5]
        let k = 3
        let threshold = 0
        let expected = 3
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testAllSubarraysMatch_4 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 5: Boundary case where k is 1.
    // 测试用例 5: 边界情况，k 为 1。
    func testBoundaryKIsOne_5() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 5, 2, 6]
        let k = 1
        let threshold = 5
        let expected = 2
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testBoundaryKIsOne_5 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 6: Boundary case where k is equal to the array length.
    // 测试用例 6: 边界情况，k 等于数组长度。
    func testBoundaryKIsArrLength_6() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [10, 20, 30]
        let k = 3
        let threshold = 20
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testBoundaryKIsArrLength_6 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 7: Boundary case where k is array length but doesn't match.
    // 测试用例 7: 边界情况，k 等于数组长度但不满足条件。
    func testBoundaryKIsArrLengthNoMatch_7() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [10, 20, 30]
        let k = 3
        let threshold = 21
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testBoundaryKIsArrLengthNoMatch_7 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 8: The average is exactly equal to the threshold.
    // 测试用例 8: 平均值恰好等于阈值。
    func testAverageIsExactlyThreshold_8() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 2, 3, 4]
        let k = 3
        let threshold = 2
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testAverageIsExactlyThreshold_8 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 9: Array with a single element, which matches.
    // 测试用例 9: 单元素数组，且满足条件。
    func testSingleElementArrayMatch_9() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [100]
        let k = 1
        let threshold = 50
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testSingleElementArrayMatch_9 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 10: Array with a single element, which does not match.
    // 测试用例 10: 单元素数组，但不满足条件。
    func testSingleElementArrayNoMatch_10() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [100]
        let k = 1
        let threshold = 101
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testSingleElementArrayNoMatch_10 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 11: All elements are the same, average is below threshold.
    // 测试用例 11: 所有元素相同，平均值低于阈值。
    func testAllElementsSameBelowThreshold_11() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [5,5,5,5,5]
        let k = 3
        let threshold = 6
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testAllElementsSameBelowThreshold_11 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 12: All elements are the same, average is equal to threshold.
    // 测试用例 12: 所有元素相同，平均值等于阈值。
    func testAllElementsSameAtThreshold_12() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [5,5,5,5,5]
        let k = 3
        let threshold = 5
        let expected = 3
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testAllElementsSameAtThreshold_12 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 13: All elements are the same, average is above threshold.
    // 测试用例 13: 所有元素相同，平均值高于阈值。
    func testAllElementsSameAboveThreshold_13() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [5,5,5,5,5]
        let k = 3
        let threshold = 4
        let expected = 3
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testAllElementsSameAboveThreshold_13 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 14: Strictly increasing array.
    // 测试用例 14: 严格递增数组。
    func testStrictlyIncreasingArray_14() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1,2,3,4,5,6,7]
        let k = 3
        let threshold = 4
        let expected = 4
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testStrictlyIncreasingArray_14 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 15: Strictly decreasing array.
    // 测试用例 15: 严格递减数组。
    func testStrictlyDecreasingArray_15() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [7,6,5,4,3,2,1]
        let k = 3
        let threshold = 4
        let expected = 3
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testStrictlyDecreasingArray_15 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 16: Array with large values near the constraint limit.
    // 测试用例 16: 包含接近约束上限的大数值的数组。
    func testLargeValues_16() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [10000, 10000, 10000]
        let k = 2
        let threshold = 10000
        let expected = 2
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testLargeValues_16 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 17: Array with a mix of small and very large values.
    // 测试用例 17: 混合了小数值和极大数值的数组。
    func testMixedValues_17() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 1, 10000]
        let k = 2
        let threshold = 5000
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testMixedValues_17 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }
    
    // Test case 18: A case where the average is a non-integer.
    // 测试用例 18: 平均值为非整数的情况。
    func testFloatingPointAverage_18() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 1, 2]
        let k = 3
        let threshold = 1
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testFloatingPointAverage_18 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }
    
    // Test case 19: Long array with a relatively large k.
    // 测试用例 19: 较长数组和相对较大的 k 值。
    func testLongArrayLargeK_19() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let k = 8
        let threshold = 5
        let expected = 2
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testLongArrayLargeK_19 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 20: Another case with non-integer average, not matching.
    // 测试用例 20: 另一个平均值为非整数且不满足条件的情况。
    func testFloatingPointAverageNoMatch_20() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = [1, 1, 1]
        let k = 2
        let threshold = 2
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testFloatingPointAverageNoMatch_20 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed for arr = \(arr), k = \(k), threshold = \(threshold)")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 21: Performance test with a large array and small k.
    // 测试用例 21: 针对大数组和小 k 值的性能测试。
    func testPerformanceLargeArraySmallK_21() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = Array(repeating: 5000, count: 100_000)
        let k = 100
        let threshold = 5000
        let expected = 100_000 - 100 + 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testPerformanceLargeArraySmallK_21 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed on large array with small k")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }

    // Test case 22: Performance test with a large array and large k.
    // 测试用例 22: 针对大数组和大 k 值的性能测试。
    func testPerformanceLargeArrayLargeK_22() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = Array(repeating: 100, count: 100_000)
        let k = 50_000
        let threshold = 101
        let expected = 0
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testPerformanceLargeArrayLargeK_22 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed on large array with large k")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }
    
    // Test case 23: Performance test where all elements are the maximum value.
    // 测试用例 23: 所有元素均为最大值的性能测试。
    func testPerformanceMaxValues_23() {
        let expectation = self.expectation(description: "Calculation should complete within 5 seconds.")
        let s = P1343_Solution1()
        let arr = Array(repeating: 10000, count: 100_000)
        let k = 100_000
        let threshold = 10000
        let expected = 1
        
        DispatchQueue.global().async {
            let result = s.numOfSubarrays(arr, k, threshold)
            print("Test testPerformanceMaxValues_23 result: \(result)")
            DispatchQueue.main.async {
                XCTAssertEqual(result, expected, "Failed on large array with max values")
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("Test timed out: \(error.localizedDescription)")
            }
        }
    }
}