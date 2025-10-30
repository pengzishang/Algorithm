import XCTest
@testable import LeetCodeSolutions

final class P1534_Solution1_Tests: XCTestCase {
    let solution = P1534_Solution1()
    
    // Test case 1: Basic example from the problem
    // 测试用例1: 问题中的基础示例
    func testBasicExample_1() {
        let arr = [3,0,1,1,9,7]
        let a = 7, b = 2, c = 3
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 1 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 1 - Result: \(result)")
        XCTAssertEqual(result, 4, "应该找到4个好三元组")
    }
    
    // Test case 2: No valid triplets
    // 测试用例2: 没有有效的三元组
    func testNoValidTriplets_2() {
        let arr = [1,1,2,2,3]
        let a = 0, b = 0, c = 1
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 2 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 2 - Result: \(result)")
        XCTAssertEqual(result, 0, "应该没有满足条件的三元组")
    }
    
    // Test case 3: All elements are the same
    // 测试用例3: 所有元素都相同
    func testAllSameElements_3() {
        let arr = [5,5,5,5,5]
        let a = 0, b = 0, c = 0
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 3 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 3 - Result: \(result)")
        XCTAssertEqual(result, 10, "应该有10个好三元组 (C(5,3)=10)")
    }
    
    // Test case 4: Small array with minimum size
    // 测试用例4: 最小尺寸数组
    func testMinimumArraySize_4() {
        let arr = [1,2,3]
        let a = 1, b = 1, c = 1
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 4 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 4 - Result: \(result)")
        XCTAssertEqual(result, 1, "应该有1个好三元组")
    }
    
    // Test case 5: Large constraints but no valid triplets
    // 测试用例5: 大约束但没有有效三元组
    func testLargeConstraintsNoValid_5() {
        let arr = [1,100,1000]
        let a = 1, b = 1, c = 1
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 5 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 5 - Result: \(result)")
        XCTAssertEqual(result, 0, "应该没有满足条件的三元组")
    }
    
    // Test case 6: Ascending sequence
    // 测试用例6: 升序序列
    func testAscendingSequence_6() {
        let arr = [1,2,3,4,5]
        let a = 1, b = 1, c = 2
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 6 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 6 - Result: \(result)")
        XCTAssertEqual(result, 4, "应该有4个好三元组")
    }
    
    // Test case 7: Descending sequence
    // 测试用例7: 降序序列
    func testDescendingSequence_7() {
        let arr = [5,4,3,2,1]
        let a = 1, b = 1, c = 2
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 7 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 7 - Result: \(result)")
        XCTAssertEqual(result, 4, "应该有4个好三元组")
    }
    
    // Test case 8: Mixed positive and negative numbers
    // 测试用例8: 正负数混合
    func testMixedPositiveNegative_8() {
        let arr = [-1,0,1,-2,2]
        let a = 2, b = 2, c = 3
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 8 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 8 - Result: \(result)")
        XCTAssertEqual(result, 10, "应该有10个好三元组")
    }
    
    // Test case 9: Large array with maximum size
    // 测试用例9: 最大尺寸数组
    func testMaximumArraySize_9() {
        let arr = Array(repeating: 1, count: 100)
        let a = 0, b = 0, c = 0
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 9 - Input: arr = [1 repeated 100 times], a = \(a), b = \(b), c = \(c)")
        print("Test 9 - Result: \(result)")
        XCTAssertEqual(result, 161700, "应该有C(100,3)=161700个好三元组")
    }
    
    // Test case 10: Random values with medium constraints
    // 测试用例10: 中等约束的随机值
    func testRandomValues_10() {
        let arr = [7,3,7,3,12,1,12,2,3]
        let a = 5, b = 8, c = 1
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 10 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 10 - Result: \(result)")
        XCTAssertEqual(result, 12, "应该有12个好三元组")
    }
    
    // Test case 11: Edge case with zero values
    // 测试用例11: 零值边界情况
    func testZeroValues_11() {
        let arr = [0,0,0,0]
        let a = 0, b = 0, c = 0
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 11 - Input: arr = \(arr), a = \(a), b = \(b), c = \(c)")
        print("Test 11 - Result: \(result)")
        XCTAssertEqual(result, 4, "应该有C(4,3)=4个好三元组")
    }
    
    // Test case 12: Performance test with maximum constraints
    // 测试用例12: 最大约束的性能测试
    func testPerformanceMaxConstraints_12() {
        let arr = Array(0..<100)
        let a = 1000, b = 1000, c = 1000
        let result = solution.countGoodTriplets(arr, a, b, c)
        print("Test 12 - Input: arr = [0,1,2,...,99], a = \(a), b = \(b), c = \(c)")
        print("Test 12 - Result: \(result)")
        XCTAssertEqual(result, 161700, "应该有C(100,3)=161700个好三元组")
    }
}