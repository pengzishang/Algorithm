@testable import LeetCodeSolutions
import XCTest

final class P1671_Solution1_Tests: XCTestCase {
    // Test Example 1: already a mountain array
    // 测试示例1: 本身就是山形数组
    func testExample1AlreadyMountain() {
        let s = P1671_Solution1()
        let nums = [1, 3, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Example 1 Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,3,1]: already a mountain array")
    }

    // Test Example 2: the classic sample needing three removals
    // 测试示例2: 经典示例, 需要删除 3 个元素
    func testExample2ThreeRemovals() {
        let s = P1671_Solution1()
        let nums = [2, 1, 1, 5, 6, 2, 3, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Example 2 Result: \(result)")
        XCTAssertEqual(result, 3, "Failed for nums = [2,1,1,5,6,2,3,1]: expected 3")
    }

    // Boundary: the minimum allowed length, already a mountain
    // 边界: 允许的最小长度, 且本身是山形
    func testMinimumLengthMountain() {
        let s = P1671_Solution1()
        let nums = [1, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Minimum Length Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,1]: the shortest possible mountain")
    }

    // Boundary: four elements, already a mountain
    // 边界: 四个元素, 本身是山形
    func testFourElementsMountain() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 2]
        let result = s.minimumMountainRemovals(nums)
        print("Test Four Elements Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,2]")
    }

    // Normal: a perfectly symmetric mountain
    // 正常: 完美对称的山形数组
    func testPerfectSymmetricMountain() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 4, 3, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Perfect Symmetric Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,4,3,2,1]")
    }

    // Normal: one leading element must be removed
    // 正常: 需要删除开头一个元素
    func testRemoveLeadingElement() {
        let s = P1671_Solution1()
        let nums = [5, 1, 2, 3, 4, 5, 4]
        let result = s.minimumMountainRemovals(nums)
        print("Test Remove Leading Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for nums = [5,1,2,3,4,5,4]: dropping the leading 5 suffices")
    }

    // Normal: a descending run precedes the mountain
    // 正常: 山形之前有一段下降序列
    func testDescendingPrefix() {
        let s = P1671_Solution1()
        let nums = [9, 8, 7, 1, 2, 3, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Descending Prefix Result: \(result)")
        XCTAssertEqual(result, 3, "Failed for nums = [9,8,7,1,2,3,2,1]: expected 3")
    }

    // Normal: mountain with an asymmetric tail
    // 正常: 山形但尾部不对称
    func testAsymmetricTail() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 4, 5, 3, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Asymmetric Tail Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,4,5,3,1]")
    }

    // Normal: the peak is adjacent to the last element
    // 正常: 峰值紧邻最后一个元素
    func testPeakNearEnd() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 4, 5, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Peak Near End Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,4,5,1]")
    }

    // Normal: a long symmetric mountain with nine elements
    // 正常: 九个元素的长对称山形
    func testLongSymmetricMountain() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 4, 5, 4, 3, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Long Symmetric Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,4,5,4,3,2,1]")
    }

    // Boundary: duplicate values inside the mountain
    // 边界: 山形内部存在重复值
    func testDuplicateValues() {
        let s = P1671_Solution1()
        let nums = [1, 2, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Duplicate Values Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for nums = [1,2,2,1]: duplicates break strictness, one removal needed")
    }

    // Boundary: three equal middle values
    // 边界: 中间三个相等的值
    func testThreeEqualMiddleValues() {
        let s = P1671_Solution1()
        let nums = [1, 2, 2, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Three Equal Middle Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for nums = [1,2,2,2,1]: expected 2")
    }

    // Normal: two competing peaks, the later one wins
    // 正常: 两个候选峰值, 靠后的更优
    func testTwoCompetingPeaks() {
        let s = P1671_Solution1()
        let nums = [2, 3, 1, 2, 3, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Two Competing Peaks Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for nums = [2,3,1,2,3,2,1]: expected 2")
    }

    // Normal: a very large value appears inside the array
    // 正常: 数组内部出现极大的数值
    func testLargeInternalValue() {
        let s = P1671_Solution1()
        let nums = [100, 1, 2, 3, 4, 100, 50, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Large Internal Value Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for nums = [100,1,2,3,4,100,50,1]: expected 1")
    }

    // Normal: mountain sandwiched between noise at both ends
    // 正常: 山形两侧都有噪声
    func testNoiseOnBothEnds() {
        let s = P1671_Solution1()
        let nums = [3, 1, 2, 3, 2, 1, 3]
        let result = s.minimumMountainRemovals(nums)
        print("Test Noise On Both Ends Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for nums = [3,1,2,3,2,1,3]: expected 2")
    }

    // Normal: an early small peak that must be discarded
    // 正常: 前方有个小峰需要舍弃
    func testEarlySmallPeakDiscarded() {
        let s = P1671_Solution1()
        let nums = [1, 2, 1, 2, 3, 2, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Early Small Peak Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for nums = [1,2,1,2,3,2,1]: expected 2")
    }

    // Normal: a long descent followed by a short climb
    // 正常: 长下降之后接一段短上升
    func testLongDescentThenClimb() {
        let s = P1671_Solution1()
        let nums = [5, 4, 3, 2, 1, 2, 3, 4, 5, 6, 5, 4]
        let result = s.minimumMountainRemovals(nums)
        print("Test Long Descent Then Climb Result: \(result)")
        XCTAssertEqual(result, 4, "Failed for nums = [5,4,3,2,1,2,3,4,5,6,5,4]: expected 4")
    }

    // Normal: only the peak survives from a scattered array
    // 正常: 杂乱数组中只保留少数元素构成山形
    func testScatteredArray() {
        let s = P1671_Solution1()
        let nums = [1, 5, 2, 4, 3]
        let result = s.minimumMountainRemovals(nums)
        print("Test Scattered Array Result: \(result)")
        XCTAssertEqual(result, 1, "Failed for nums = [1,5,2,4,3]: expected 1")
    }

    // Normal: peak formed by skipping an intermediate valley
    // 正常: 跳过中间低谷形成峰值
    func testSkipIntermediateValley() {
        let s = P1671_Solution1()
        let nums = [2, 4, 3, 1, 5, 6, 4]
        let result = s.minimumMountainRemovals(nums)
        print("Test Skip Intermediate Valley Result: \(result)")
        XCTAssertEqual(result, 2, "Failed for nums = [2,4,3,1,5,6,4]: expected 2")
    }

    // Boundary: maximum allowed value at the peak
    // 边界: 峰值取到允许的最大值
    func testMaximumValuePeak() {
        let s = P1671_Solution1()
        let nums = [1, 1_000_000_000, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Maximum Value Peak Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,1000000000,1]: expected 0")
    }

    // Normal: ten increasing then a single descending step
    // 正常: 十个递增后接一个下降
    func testTenIncreasingThenDrop() {
        let s = P1671_Solution1()
        let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
        let result = s.minimumMountainRemovals(nums)
        print("Test Ten Increasing Then Drop Result: \(result)")
        XCTAssertEqual(result, 0, "Failed for nums = [1,2,3,4,5,6,7,8,9,10,1]: expected 0")
    }

    // Extreme: a perfect mountain of 999 elements
    // 极限: 999 个元素的完美山形
    func testExtremePerfectMountain999() {
        let s = P1671_Solution1()
        let nums = Array(1 ... 500) + Array((1 ... 499).reversed())
        let result = s.minimumMountainRemovals(nums)
        print("Test Extreme Perfect Mountain count: \(nums.count), result: \(result)")
        XCTAssertEqual(nums.count, 999, "Test setup failed: expected 999 elements")
        XCTAssertEqual(result, 0, "Failed for a perfect mountain of 999 elements")
    }

    // Extreme: 1000 elements with one inserted dip
    // 极限: 1000 个元素, 中间插入一个破坏点
    func testExtremeMountainWithDip1000() {
        let s = P1671_Solution1()
        let nums = Array(1 ... 500) + [1] + Array((1 ... 499).reversed())
        let result = s.minimumMountainRemovals(nums)
        print("Test Extreme Mountain With Dip count: \(nums.count), result: \(result)")
        XCTAssertEqual(nums.count, 1000, "Test setup failed: expected 1000 elements")
        XCTAssertEqual(result, 1, "Failed for a 1000-element mountain with one inserted dip")
    }

    // Extreme: 1000 alternating values
    // 极限: 1000 个交替值
    func testExtremeAlternating1000() {
        let s = P1671_Solution1()
        let nums = (0 ..< 1000).map { $0 % 2 == 0 ? 1 : 2 }
        let result = s.minimumMountainRemovals(nums)
        print("Test Extreme Alternating count: \(nums.count), result: \(result)")
        XCTAssertEqual(nums.count, 1000, "Test setup failed: expected 1000 elements")
        XCTAssertEqual(result, 997, "Failed for 1000 alternating values [1,2,1,2,...]: only [1,2,1] survives")
    }

    // Extreme: 1000 elements repeating the pattern 1..5
    // 极限: 1000 个元素重复 1..5 的模式
    func testExtremeRepeatingPattern1000() {
        let s = P1671_Solution1()
        let nums = (0 ..< 1000).map { $0 % 5 + 1 }
        let result = s.minimumMountainRemovals(nums)
        print("Test Extreme Repeating Pattern count: \(nums.count), result: \(result)")
        XCTAssertEqual(nums.count, 1000, "Test setup failed: expected 1000 elements")
        XCTAssertEqual(result, 991, "Failed for a 1000-element repeating 1..5 pattern: expected 991")
    }

    // Extreme: performance guard on the maximum input size
    // 极限: 最大输入规模下的性能测试, 用于验证是否超时
    func testPerformanceMaximumInput() {
        let s = P1671_Solution1()
        let nums = Array(1 ... 500) + [1] + Array((1 ... 499).reversed())
        self.measure {
            _ = s.minimumMountainRemovals(nums)
        }
    }
}
