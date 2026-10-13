@testable import LeetCodeSolutions
import XCTest

final class P0121_Solution1_Tests: XCTestCase {
    // Test Example 1: basic case with profit
    // 测试示例1: 有利润的基础用例
    func testExample1BasicCase() {
        let s = P0121_Solution1()
        let prices = [7, 1, 5, 3, 6, 4]
        let result = s.maxProfit(prices)
        print("Test Example 1 Result: \(result)")
        XCTAssertEqual(result, 5, "Failed for prices = [7,1,5,3,6,4]: expected 5 (buy at 1, sell at 6)")
    }

    // Test Example 2: no profit possible
    // 测试示例2: 无法获得利润
    func testExample2NoProfit() {
        let s = P0121_Solution1()
        let prices = [7, 6, 4, 3, 1]
        let result = s.maxProfit(prices)
        print("Test Example 2 Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [7,6,4,3,1]: expected 0 (prices keep falling)")
    }

    // Boundary: a single day means no transaction is possible
    // 边界: 只有一天, 无法完成交易
    func testSingleDayCannotTrade() {
        let s = P0121_Solution1()
        let prices = [5]
        let result = s.maxProfit(prices)
        print("Test Single Day Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [5]: a single day allows no buy-then-sell")
    }

    // Boundary: two days with a rise
    // 边界: 两天且上涨
    func testTwoDaysProfit() {
        let s = P0121_Solution1()
        let prices = [1, 2]
        let result = s.maxProfit(prices)
        print("Test Two Days Profit Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for prices = [1,2]: expected 1")
    }

    // Boundary: two days with a fall
    // 边界: 两天且下跌
    func testTwoDaysNoProfit() {
        let s = P0121_Solution1()
        let prices = [2, 1]
        let result = s.maxProfit(prices)
        print("Test Two Days No Profit Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [2,1]: selling lower than buying is not allowed")
    }

    // Boundary: two days with identical prices
    // 边界: 两天价格相同
    func testTwoDaysEqualPrices() {
        let s = P0121_Solution1()
        let prices = [3, 3]
        let result = s.maxProfit(prices)
        print("Test Two Days Equal Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [3,3]: zero profit")
    }

    // Boundary: every price identical
    // 边界: 所有价格相同
    func testAllPricesEqual() {
        let s = P0121_Solution1()
        let prices = [5, 5, 5, 5, 5]
        let result = s.maxProfit(prices)
        print("Test All Prices Equal Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [5,5,5,5,5]: no price movement")
    }

    // Normal: strictly increasing prices, buy first and sell last
    // 正常: 严格递增, 第一天买最后一天卖
    func testStrictlyIncreasing() {
        let s = P0121_Solution1()
        let prices = [1, 2, 3, 4, 5]
        let result = s.maxProfit(prices)
        print("Test Strictly Increasing Result: \(result)")
        XCTAssertEqual(result, 4, "Failed for prices = [1,2,3,4,5]: expected 4")
    }

    // Normal: strictly decreasing prices, never profitable
    // 正常: 严格递减, 始终无利可图
    func testStrictlyDecreasing() {
        let s = P0121_Solution1()
        let prices = [5, 4, 3, 2, 1]
        let result = s.maxProfit(prices)
        print("Test Strictly Decreasing Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [5,4,3,2,1]: expected 0")
    }

    // Normal: buy on the very first day
    // 正常: 在第一天买入
    func testBuyOnFirstDay() {
        let s = P0121_Solution1()
        let prices = [1, 2, 3, 4, 5, 6]
        let result = s.maxProfit(prices)
        print("Test Buy On First Day Result: \(result)")
        XCTAssertEqual(result, 5, "Failed for prices = [1,2,3,4,5,6]: expected 5")
    }

    // Normal: the lowest price sits in the middle of the array
    // 正常: 最低价位于数组中间
    func testLowestPriceInMiddle() {
        let s = P0121_Solution1()
        let prices = [3, 2, 6, 5, 0, 3]
        let result = s.maxProfit(prices)
        print("Test Lowest Price In Middle Result: \(result)")
        XCTAssertEqual(result, 4, "Failed for prices = [3,2,6,5,0,3]: expected 4 (buy at 2, sell at 6)")
    }

    // Boundary: all prices are zero
    // 边界: 价格全为 0
    func testAllZeroPrices() {
        let s = P0121_Solution1()
        let prices = [0, 0, 0]
        let result = s.maxProfit(prices)
        print("Test All Zero Prices Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [0,0,0]: expected 0")
    }

    // Boundary: zero then the maximum allowed price
    // 边界: 0 之后出现允许的最大价格
    func testZeroThenMaximum() {
        let s = P0121_Solution1()
        let prices = [0, 10000]
        let result = s.maxProfit(prices)
        print("Test Zero Then Maximum Result: \(result)")
        XCTAssertEqual(result, 10000, "Failed for prices = [0,10000]: expected the full spread 10000")
    }

    // Boundary: maximum price first, then zero
    // 边界: 先最大值后 0
    func testMaximumThenZero() {
        let s = P0121_Solution1()
        let prices = [10000, 0]
        let result = s.maxProfit(prices)
        print("Test Maximum Then Zero Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [10000,0]: expected 0")
    }

    // Boundary: zeros followed by the maximum price
    // 边界: 多个 0 之后出现最大价格
    func testZerosAndMaxMixed() {
        let s = P0121_Solution1()
        let prices = [0, 0, 10000, 10000]
        let result = s.maxProfit(prices)
        print("Test Zeros And Max Result: \(result)")
        XCTAssertEqual(result, 10000, "Failed for prices = [0,0,10000,10000]: expected 10000")
    }

    // Normal: drop first, then a rally
    // 正常: 先下跌后上涨
    func testDropThenRise() {
        let s = P0121_Solution1()
        let prices = [10, 5, 1, 8, 2]
        let result = s.maxProfit(prices)
        print("Test Drop Then Rise Result: \(result)")
        XCTAssertEqual(result, 7, "Failed for prices = [10,5,1,8,2]: expected 7 (buy at 1, sell at 8)")
    }

    // Normal: the peak is on the first day, so profit comes from a later dip
    // 正常: 最高点在第一日, 利润来自后面的低点
    func testPeakOnFirstDay() {
        let s = P0121_Solution1()
        let prices = [10, 1, 2]
        let result = s.maxProfit(prices)
        print("Test Peak On First Day Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for prices = [10,1,2]: expected 1")
    }

    // Boundary: the valley is on the last day
    // 边界: 最低点在最后一天
    func testValleyOnLastDay() {
        let s = P0121_Solution1()
        let prices = [5, 4, 3, 2, 1, 0]
        let result = s.maxProfit(prices)
        print("Test Valley On Last Day Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = [5,4,3,2,1,0]: expected 0")
    }

    // Normal: two dips, pick the most profitable one
    // 正常: 两次回调, 取利润最大的一次
    func testTwoDipsPickBest() {
        let s = P0121_Solution1()
        let prices = [2, 4, 1, 7]
        let result = s.maxProfit(prices)
        print("Test Two Dips Pick Best Result: \(result)")
        XCTAssertEqual(result, 6, "Failed for prices = [2,4,1,7]: expected 6 (buy at 1, sell at 7)")
    }

    // Normal: flat prices with a single spike
    // 正常: 价格走平后出现尖峰
    func testFlatWithSpike() {
        let s = P0121_Solution1()
        let prices = [3, 3, 3, 10, 3]
        let result = s.maxProfit(prices)
        print("Test Flat With Spike Result: \(result)")
        XCTAssertEqual(result, 7, "Failed for prices = [3,3,3,10,3]: expected 7")
    }

    // Normal: alternating up and down movements
    // 正常: 涨跌交替
    func testAlternatingPrices() {
        let s = P0121_Solution1()
        let prices = [1, 3, 1, 3, 1, 3]
        let result = s.maxProfit(prices)
        print("Test Alternating Prices Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for prices = [1,3,1,3,1,3]: expected 2")
    }

    // Normal: mixed sequence where the answer is not the global min/max pair
    // 正常: 混合序列, 答案不是全局最小与最大之差
    func testMixedSequence() {
        let s = P0121_Solution1()
        let prices = [3, 3, 5, 0, 0, 3, 1, 4]
        let result = s.maxProfit(prices)
        print("Test Mixed Sequence Result: \(result)")
        XCTAssertEqual(result, 4, "Failed for prices = [3,3,5,0,0,3,1,4]: expected 4")
    }

    // Extreme: 1000 strictly increasing prices
    // 极限: 1000 个严格递增的价格
    func testLargeIncreasingArray() {
        let s = P0121_Solution1()
        let prices = Array(1 ... 1000)
        let result = s.maxProfit(prices)
        print("Test Large Increasing Array Result: \(result)")
        XCTAssertEqual(result, 999, "Failed for prices = 1...1000: expected 999")
    }

    // Extreme: 1000 strictly decreasing prices
    // 极限: 1000 个严格递减的价格
    func testLargeDecreasingArray() {
        let s = P0121_Solution1()
        let prices = Array((1 ... 1000).reversed())
        let result = s.maxProfit(prices)
        print("Test Large Decreasing Array Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for prices = 1000...1: expected 0")
    }

    // Extreme: 100000 prices, a single zero followed by the maximum price
    // 极限: 100000 个价格, 开头一个 0 之后全是最大价格
    func testLargeArrayWithSingleDip() {
        let s = P0121_Solution1()
        let prices = [0] + Array(repeating: 10000, count: 99999)
        let result = s.maxProfit(prices)
        print("Test Large Array With Single Dip Result: \(result)")
        XCTAssertEqual(result, 10000, "Failed for 100000 prices starting at 0: expected 10000")
    }

    // Extreme: performance guard on the maximum input size
    // 极限: 最大输入规模下的性能测试, 用于验证是否超时
    func testPerformanceLargeInput() {
        let s = P0121_Solution1()
        let prices = (0 ..< 100_000).map { $0 % 10000 }
        measure {
            _ = s.maxProfit(prices)
        }
    }
}
