@testable import LeetCodeSolutions
import XCTest

final class P1423_Solution1_Tests: XCTestCase {
    let solution = P1423_Solution1()

    // Test case 1: Basic example from problem description
    // 测试用例1: 基础示例
    func testBasicExample1() {
        let cardPoints = [1, 2, 3, 4, 5, 6, 1]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 1 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 12, "Should get maximum points from right side")
    }

    // Test case 2: All cards have same value
    // 测试用例2: 所有卡牌值相同
    func testAllSameValues() {
        let cardPoints = [2, 2, 2]
        let k = 2
        let result = solution.maxScore(cardPoints, k)
        print("Test 2 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 4, "Any combination should give same result")
    }

    // Test case 3: Take all cards
    // 测试用例3: 取所有卡牌
    func testTakeAllCards() {
        let cardPoints = [9, 7, 7, 9, 7, 7, 9]
        let k = 7
        let result = solution.maxScore(cardPoints, k)
        print("Test 3 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 55, "Should take all cards and sum all points")
    }

    // Test case 4: Cannot take middle card
    // 测试用例4: 无法取中间卡牌
    func testCannotTakeMiddleCard() {
        let cardPoints = [1, 1000, 1]
        let k = 1
        let result = solution.maxScore(cardPoints, k)
        print("Test 4 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 1, "Can only take from ends, not middle")
    }

    // Test case 5: Mixed strategy needed
    // 测试用例5: 需要混合策略
    func testMixedStrategy() {
        let cardPoints = [1, 79, 80, 1, 1, 1, 200, 1]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 5 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 202, "Optimal strategy mixes left and right")
    }

    // Test case 6: Take only one card
    // 测试用例6: 只取一张卡牌
    func testTakeOneCard() {
        let cardPoints = [5, 10, 15, 20]
        let k = 1
        let result = solution.maxScore(cardPoints, k)
        print("Test 6 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 20, "Should take the maximum end card")
    }

    // Test case 7: Small array with k=1
    // 测试用例7: 小数组k=1
    func testSmallArrayK1() {
        let cardPoints = [3, 1]
        let k = 1
        let result = solution.maxScore(cardPoints, k)
        print("Test 7 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 3, "Should take the larger end")
    }

    // Test case 8: All cards from left side
    // 测试用例8: 全部从左端取
    func testAllFromLeft() {
        let cardPoints = [10, 1, 1, 1, 1, 1, 1]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 8 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 12, "Optimal to take all from left")
    }

    // Test case 9: All cards from right side
    // 测试用例9: 全部从右端取
    func testAllFromRight() {
        let cardPoints = [1, 1, 1, 1, 1, 1, 10]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 9 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 12, "Optimal to take all from right")
    }

    // Test case 10: k equals array length
    // 测试用例10: k等于数组长度
    func testKEqualsArrayLength() {
        let cardPoints = [1, 2, 3, 4, 5]
        let k = 5
        let result = solution.maxScore(cardPoints, k)
        print("Test 10 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 15, "Should take all cards")
    }

    // Test case 11: Minimum constraints
    // 测试用例11: 最小约束
    func testMinimumConstraints() {
        let cardPoints = [1]
        let k = 1
        let result = solution.maxScore(cardPoints, k)
        print("Test 11 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 1, "Single card array")
    }

    // Test case 12: Alternating high values
    // 测试用例12: 交替高值
    func testAlternatingHighValues() {
        let cardPoints = [100, 1, 100, 1, 100, 1, 100]
        let k = 4
        let result = solution.maxScore(cardPoints, k)
        print("Test 12 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 301, "Should take all high value cards")
    }

    // Test case 13: Increasing sequence
    // 测试用例13: 递增序列
    func testIncreasingSequence() {
        let cardPoints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let k = 4
        let result = solution.maxScore(cardPoints, k)
        print("Test 13 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 34, "Should take largest numbers from ends")
    }

    // Test case 14: Decreasing sequence
    // 测试用例14: 递减序列
    func testDecreasingSequence() {
        let cardPoints = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        let k = 4
        let result = solution.maxScore(cardPoints, k)
        print("Test 14 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 34, "Should take largest numbers from ends")
    }

    // Test case 15: Symmetric array
    // 测试用例15: 对称数组
    func testSymmetricArray() {
        let cardPoints = [1, 2, 3, 4, 5, 5, 4, 3, 2, 1]
        let k = 5
        let result = solution.maxScore(cardPoints, k)
        print("Test 15 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 15, "Symmetric array optimal selection")
    }

    // Test case 16: Large k value
    // 测试用例16: 大k值
    func testLargeK() {
        let cardPoints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let k = 8
        let result = solution.maxScore(cardPoints, k)
        print("Test 16 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 52, "Large k value test")
    }

    // Test case 17: Edge case with two elements
    // 测试用例17: 两个元素的边界情况
    func testTwoElements() {
        let cardPoints = [50, 30]
        let k = 2
        let result = solution.maxScore(cardPoints, k)
        print("Test 17 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 80, "Should take both cards")
    }

    // Test case 18: All zeros
    // 测试用例18: 全零
    func testAllZeros() {
        let cardPoints = [0, 0, 0, 0, 0]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 18 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 0, "All zeros should give zero")
    }

    // Test case 19: Single high value in middle
    // 测试用例19: 中间有单个高值
    func testSingleHighInMiddle() {
        let cardPoints = [1, 1, 100, 1, 1]
        let k = 2
        let result = solution.maxScore(cardPoints, k)
        print("Test 19 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 2, "Cannot reach middle high value")
    }

    // Test case 20: Performance test with large array
    // 测试用例20: 大数组性能测试
    func testLargeArrayPerformance() {
        let cardPoints = Array(repeating: 1, count: 100_000)
        let k = 50000
        let result = solution.maxScore(cardPoints, k)
        print("Test 20 - Input: large array, k: \(k), Result: \(result)")
        XCTAssertEqual(result, 50000, "Large array performance test")
    }

    // Test case 21: Mixed values with optimal split
    // 测试用例21: 混合值最优分割
    func testMixedValuesOptimalSplit() {
        let cardPoints = [6, 2, 3, 4, 7, 2, 1, 7, 1]
        let k = 4
        let result = solution.maxScore(cardPoints, k)
        print("Test 21 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 16, "Optimal split between left and right")
    }

    // Test case 22: Maximum value at both ends
    // 测试用例22: 两端都是最大值
    func testMaxAtBothEnds() {
        let cardPoints = [100, 1, 1, 1, 1, 1, 100]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 22 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 201, "Should take both ends and one middle")
    }

    // Test case 23: Random mixed values
    // 测试用例23: 随机混合值
    func testRandomMixedValues() {
        let cardPoints = [3, 4, 2, 1, 7, 8, 5, 6]
        let k = 5
        let result = solution.maxScore(cardPoints, k)
        print("Test 23 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 29, "Random mixed values test")
    }

    // Test case 24: Extreme values difference
    // 测试用例24: 极值差异
    func testExtremeValuesDifference() {
        let cardPoints = [1, 10000, 1, 1, 1, 1, 1]
        let k = 2
        let result = solution.maxScore(cardPoints, k)
        print("Test 24 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 10001, "Extreme values difference test")
    }

    // Test case 25: All cards from middle range
    // 测试用例25: 从中间范围取所有卡牌
    func testAllFromMiddleRange() {
        let cardPoints = [10, 20, 30, 40, 50, 60, 70]
        let k = 3
        let result = solution.maxScore(cardPoints, k)
        print("Test 25 - Input: \(cardPoints), k: \(k), Result: \(result)")
        XCTAssertEqual(result, 180, "Should take from both ends optimally")
    }
}
