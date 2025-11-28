@testable import LeetCodeSolutions
import XCTest

final class P3652_Solution1_Tests: XCTestCase {
    // Test case 1: Basic example from problem description
    // 测试用例1: 问题描述中的基础示例
    func testBasicExample1() {
        let s = P3652_Solution1()
        let prices = [4, 2, 8]
        let strategy = [-1, 0, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 1 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 10, "Expected profit of 10 by modifying subarray [0,1]")
    }

    // Test case 2: No modification needed
    // 测试用例2: 不需要修改的情况
    func testNoModificationNeeded() {
        let s = P3652_Solution1()
        let prices = [5, 4, 3]
        let strategy = [1, 1, 0]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 2 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 9, "Expected profit of 9 without any modification")
    }

    // Test case 3: All buy operations
    // 测试用例3: 全部买入操作
    func testAllBuyOperations() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30]
        let strategy = [-1, -1, -1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 3 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 20, "Expected profit of 20 with all buys, modification should improve")
    }

    // Test case 4: All sell operations
    // 测试用例4: 全部卖出操作
    func testAllSellOperations() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30]
        let strategy = [1, 1, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 4 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 60, "Expected profit of 60 with all sells")
    }

    // Test case 5: All hold operations
    // 测试用例5: 全部持有操作
    func testAllHoldOperations() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30]
        let strategy = [0, 0, 0]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 5 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 30, "Expected profit of 30 with all holds")
    }

    // Test case 6: Mixed operations with k=4
    // 测试用例6: 混合操作，k=4
    func testMixedOperationsK4() {
        let s = P3652_Solution1()
        let prices = [1, 2, 3, 4, 5, 6]
        let strategy = [-1, 0, 1, -1, 0, 1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 6 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 14, "Expected profit of 14 with optimal modification")
    }

    // Test case 7: Large k value equal to array length
    // 测试用例7: k值等于数组长度
    func testKEqualToArrayLength() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30, 40]
        let strategy = [-1, -1, -1, -1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 7 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 70, "Expected profit of 70 by modifying entire array")
    }

    // Test case 8: Small array with minimum length
    // 测试用例8: 最小长度的数组
    func testMinimumLengthArray() {
        let s = P3652_Solution1()
        let prices = [1, 2]
        let strategy = [-1, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 8 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 2, "Expected profit of 2 with modification")
    }

    // Test case 9: High profit from modification
    // 测试用例9: 修改带来高利润
    func testHighProfitModification() {
        let s = P3652_Solution1()
        let prices = [100, 1, 100, 1]
        let strategy = [-1, -1, -1, -1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 9 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 101, "Expected profit of 101 from optimal modification")
    }

    // Test case 10: Multiple possible modifications
    // 测试用例10: 多个可能的修改位置
    func testMultiplePossibleModifications() {
        let s = P3652_Solution1()
        let prices = [1, 10, 1, 10]
        let strategy = [-1, -1, -1, -1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 10 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, -1, "Expected profit of 18 from best modification")
    }

    // Test case 11: Decreasing prices
    // 测试用例11: 价格递减
    func testDecreasingPrices() {
        let s = P3652_Solution1()
        let prices = [100, 90, 80, 70]
        let strategy = [1, 1, 1, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 11 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 340, "Expected profit of 340 with all sells")
    }

    // Test case 12: Increasing prices
    // 测试用例12: 价格递增
    func testIncreasingPrices() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30, 40]
        let strategy = [-1, -1, -1, -1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 12 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 10, "Expected profit of 40 with optimal modification")
    }

    // Test case 13: Random mixed operations
    // 测试用例13: 随机混合操作
    func testRandomMixedOperations() {
        let s = P3652_Solution1()
        let prices = [5, 3, 7, 2, 8, 4]
        let strategy = [-1, 0, 1, -1, 0, 1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 13 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 13, "Expected profit of 11 with optimal modification")
    }

    // Test case 14: Edge case with minimum prices
    // 测试用例14: 最小价格的边界情况
    func testMinimumPrices() {
        let s = P3652_Solution1()
        let prices = [1, 1, 1, 1]
        let strategy = [-1, 1, -1, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 14 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 1, "Expected profit of 2 with modification")
    }

    // Test case 15: Edge case with maximum prices
    // 测试用例15: 最大价格的边界情况
    func testMaximumPrices() {
        let s = P3652_Solution1()
        let prices = [100_000, 100_000, 100_000]
        let strategy = [-1, -1, -1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 15 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 0, "Expected profit of 100000 with modification")
    }

    // Test case 16: Large dataset performance test
    // 测试用例16: 大数据集性能测试
    func testLargeDatasetPerformance() {
        let s = P3652_Solution1()
        let n = 100_000
        var prices = [Int]()
        var strategy = [Int]()

        for i in 0 ..< n {
            prices.append((i % 1000) + 1)
            strategy.append(i % 3 - 1) // -1, 0, 1
        }

        let k = 1000
        let result = s.maxProfit(prices, strategy, k)
        print("Test 16 - Large dataset with \(n) elements, Result: \(result)")
        XCTAssertTrue(result >= -1_000_000_000 && result <= 1_000_000_000, "Result should be within reasonable range")
    }

    // Test case 17: All negative profit without modification
    // 测试用例17: 不修改时全部负利润
    func testAllNegativeProfit() {
        let s = P3652_Solution1()
        let prices = [100, 200, 300]
        let strategy = [-1, -1, -1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 17 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 200, "Expected profit of 200 with modification")
    }

    // Test case 18: Optimal modification in middle
    // 测试用例18: 中间位置的最优修改
    func testOptimalModificationInMiddle() {
        let s = P3652_Solution1()
        let prices = [1, 100, 1, 100, 1]
        let strategy = [-1, -1, -1, -1, -1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 18 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 100, "Expected profit of 198 from middle modification")
    }

    // Test case 19: Mixed with zeros dominant
    // 测试用例19: 以0为主的混合操作
    func testMixedWithZerosDominant() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30, 40]
        let strategy = [0, 0, 0, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 19 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 70, "Expected profit of 40 with original strategy")
    }

    // Test case 20: Complex scenario with multiple factors
    // 测试用例20: 多因素复杂场景
    func testComplexScenario() {
        let s = P3652_Solution1()
        let prices = [50, 30, 40, 60, 20, 10]
        let strategy = [-1, 1, -1, 1, -1, 1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 20 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 90, "Expected profit of 90 with optimal modification")
    }

    // Test case 21: k=2 with alternating operations
    // 测试用例21: k=2时的交替操作
    func testK2WithAlternatingOperations() {
        let s = P3652_Solution1()
        let prices = [10, 5, 15, 8]
        let strategy = [-1, 1, -1, 1]
        let k = 2
        let result = s.maxProfit(prices, strategy, k)
        print("Test 21 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 13, "Expected profit of 18 with optimal modification")
    }

    // Test case 22: All operations same as modification
    // 测试用例22: 所有操作与修改相同
    func testAllOperationsSameAsModification() {
        let s = P3652_Solution1()
        let prices = [10, 20, 30, 40]
        let strategy = [0, 0, 1, 1]
        let k = 4
        let result = s.maxProfit(prices, strategy, k)
        print("Test 22 - Prices: \(prices), Strategy: \(strategy), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 70, "Expected profit of 70 with no modification needed")
    }
}
