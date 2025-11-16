import XCTest
@testable import LeetCodeSolutions

final class P1052_GrumpyBookstoreOwnerTests: XCTestCase {
    // MARK: - Test Cases from Examples (来自题目的测试用例)
    
    // Test case 1 from the problem description.
    // 题目描述中的示例 1。
    func testExample1() {
        let s = P1052_Solution1()
        let customers = [1,0,1,2,1,1,7,5]
        let grumpy = [0,1,0,1,0,1,0,1]
        let minutes = 3
        let expected = 16
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for example 1.")
    }

    // Test case 2 from the problem description.
    // 题目描述中的示例 2。
    func testExample2() {
        let s = P1052_Solution1()
        let customers = [1]
        let grumpy = [0]
        let minutes = 1
        let expected = 1
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for example 2.")
    }

    // MARK: - Additional Test Cases (额外添加的测试用例)

    // Test when all owners are grumpy.
    // 测试老板一直生气的情况。
    func testAllGrumpy() {
        let s = P1052_Solution1()
        let customers = [10, 20, 30]
        let grumpy = [1, 1, 1]
        let minutes = 2
        let expected = 50 // Use skill on [20, 30]
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when all owners are grumpy.")
    }

    // Test when no owners are grumpy. The skill should have no effect.
    // 测试老板从不生气的情况。技能应该没有效果。
    func testNoGrumpy() {
        let s = P1052_Solution1()
        let customers = [10, 20, 30]
        let grumpy = [0, 0, 0]
        let minutes = 2
        let expected = 60
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when no owners are grumpy.")
    }

    // Test when the skill duration is equal to the total time.
    // 测试技能持续时间等于总营业时间的情况。
    func testMinutesEqualsLength() {
        let s = P1052_Solution1()
        let customers = [1, 2, 3, 4, 5]
        let grumpy = [1, 1, 1, 1, 1]
        let minutes = 5
        let expected = 15
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when minutes equals array length.")
    }

    // Test when the skill duration is just one minute.
    // 测试技能持续时间只有一分钟的情况。
    func testMinutesIsOne() {
        let s = P1052_Solution1()
        let customers = [4, 10, 7]
        let grumpy = [1, 1, 1]
        let minutes = 1
        let expected = 10 // Use skill on the minute with 10 customers
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when minutes is one.")
    }

    // Test when the best time to use the skill is at the beginning.
    // 测试使用技能的最佳时机在开始。
    func testSkillAtBeginning() {
        let s = P1052_Solution1()
        let customers = [8, 3, 2, 1]
        let grumpy = [1, 1, 0, 1]
        let minutes = 2
        let expected = 14 // Base satisfied: 2. Gain: 8+3=11. Total: 2+11=13. Recheck. Base: 2. Gain: 8+3=11. Total: 13.
        let corrected_expected = 13
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, corrected_expected, "Failed when skill is used at the beginning.")
    }

    // Test when the best time to use the skill is in the middle.
    // 测试使用技能的最佳时机在中间。
    func testSkillInMiddle() {
        let s = P1052_Solution1()
        let customers = [1, 8, 2, 9, 3]
        let grumpy = [0, 1, 1, 1, 0]
        let minutes = 2
        let expected = 15 // Base: 1+3=4. Gain: 2+9=11. Total: 4+11=15.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when skill is used in the middle.")
    }

    // Test with minutes where there are zero customers.
    // 测试某些分钟没有顾客的情况。
    func testZeroCustomersInWindow() {
        let s = P1052_Solution1()
        let customers = [1, 0, 1, 2, 0, 1]
        let grumpy = [0, 1, 0, 1, 1, 0]
        let minutes = 3
        let expected = 5 // Base: 1+1+1=3. Window [0,1,2] gain: 0. Window [1,2,3] gain: 2. Window [2,3,4] gain: 2+0=2. Total: 3+2=5.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed with zero customers in the window.")
    }

    // Test when there are no customers at all.
    // 测试完全没有顾客的情况。
    func testAllZeroCustomers() {
        let s = P1052_Solution1()
        let customers = [0, 0, 0, 0]
        let grumpy = [1, 1, 1, 1]
        let minutes = 2
        let expected = 0
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when all customers are zero.")
    }

    // Test a single element array where the owner is grumpy.
    // 测试老板生气的单元素数组。
    func testSingleElementGrumpy() {
        let s = P1052_Solution1()
        let customers = [100]
        let grumpy = [1]
        let minutes = 1
        let expected = 100
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for a single grumpy element.")
    }

    // Test with alternating grumpy and non-grumpy states.
    // 测试生气和不生气状态交替出现的情况。
    func testAlternatingGrumpy() {
        let s = P1052_Solution1()
        let customers = [1, 2, 3, 4, 5, 6]
        let grumpy = [0, 1, 0, 1, 0, 1]
        let minutes = 3
        let expected = 19 // Base: 1+3+5=9. Window [3,4,5] gain: 4+6=10. Total: 9+10=19.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for alternating grumpy states.")
    }

    // Test when two different windows could yield the same maximum gain.
    // 测试两个不同的窗口可以产生相同的最大收益。
    func testTwoIdenticalGainWindows() {
        let s = P1052_Solution1()
        let customers = [10, 1, 1, 1, 10]
        let grumpy = [1, 0, 0, 0, 1]
        let minutes = 1
        let expected = 13 // Base: 1+1+1=3. Max gain is 10. Total: 3+10=13.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for two windows with identical gain.")
    }

    // Test a longer array with minutes = 1, requiring finding the single best minute to apply the skill.
    // 测试一个较长的数组且 minutes = 1，需要找到应用技能的最佳单分钟。
    func testLongArrayMinutesOne() {
        let s = P1052_Solution1()
        let customers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let grumpy = [1, 0, 1, 0, 1, 0, 1, 0, 1, 0]
        let minutes = 1
        let expected = 39 // Base: 2+4+6+8+10=30. Max gain: 9. Total: 30+9=39.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for a long array with minutes = 1.")
    }

    // Test case with a concentrated block of grumpy minutes.
    // 测试一个具有集中生气分钟的用例。
    func testConcentratedGrumpyWindow() {
        let s = P1052_Solution1()
        let customers = [1, 1, 1, 1, 10, 1, 1, 1, 1]
        let grumpy = [0, 0, 1, 1, 1, 1, 1, 0, 0]
        let minutes = 3
        let expected = 16 // Base: 1+1+1+1=4. Max gain from window [2,3,4] is 1+1+10=12. Total: 4+12=16.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for a concentrated grumpy window.")
    }

    // Test when grumpy minutes are only at the start.
    // 测试生气时间只在开始时段。
    func testGrumpyAtStart() {
        let s = P1052_Solution1()
        let customers = [10, 2, 5, 8]
        let grumpy = [1, 1, 0, 0]
        let minutes = 2
        let expected = 25 // Use skill on first two minutes.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when grumpy minutes are at the start.")
    }
    
    // Test when grumpy minutes are only at the end.
    // 测试生气时间只在结束时段。
    func testGrumpyAtEnd() {
        let s = P1052_Solution1()
        let customers = [10, 2, 5, 8]
        let grumpy = [0, 0, 1, 1]
        let minutes = 2
        let expected = 25 // Use skill on last two minutes.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when grumpy minutes are at the end.")
    }

    // Test with complex overlapping potential gains.
    // 测试具有复杂重叠潜在收益的情况。
    func testOverlappingGains() {
        let s = P1052_Solution1()
        let customers = [6, 3, 10, 2, 5]
        let grumpy = [1, 1, 1, 0, 1]
        let minutes = 2
        let expected = 15 // Base: 2. Max gain from [1,2] is 3+10=13. Total: 2+13=15.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for complex overlapping gains.")
    }

    // Test when all are grumpy and the skill covers the whole period.
    // 测试所有人都很生气并且技能覆盖了整个时期。
    func testAllGrumpyMinutesEqualsLength() {
        let s = P1052_Solution1()
        let customers = [1, 2, 3, 4, 5]
        let grumpy = [1, 1, 1, 1, 1]
        let minutes = 5
        let expected = 15
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when all grumpy and minutes equals length.")
    }

    // A more complex mixed value test case.
    // 一个更复杂的混合值测试用例。
    func testMixedValuesComplex() {
        let s = P1052_Solution1()
        let customers = [2, 6, 8, 3, 1, 5, 9]
        let grumpy = [1, 0, 1, 1, 0, 1, 1]
        let minutes = 3
        let expected = 21 // Base: 6+1=7. Max gain from window [4,5,6] is 5+9=14. Total: 7+14=21.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for complex mixed values.")
    }
    
    // Test where a non-grumpy minute is part of the best window.
    // 测试一个不生气的分钟是最佳窗口的一部分。
    func testWindowIncludesNonGrumpy() {
        let s = P1052_Solution1()
        let customers = [10, 1, 7]
        let grumpy = [1, 0, 1]
        let minutes = 3
        let expected = 18 // Base: 1. Gain: 10+7=17. Total: 1+17=18.
        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed when best window includes non-grumpy minutes.")
    }

    // MARK: - Performance Test (性能测试)
    
    // Performance test with large inputs.
    // 使用大数据量进行性能测试。
    func testPerformanceLargeN() {
        let s = P1052_Solution1()
        let n = 20000
        let minutes = 5000
        var customers = Array(repeating: 1, count: n)
        var grumpy = Array(repeating: 0, count: n)
        var baseSatisfied = 0
        for i in 0..<n {
            // Make every other minute grumpy, and have varying customer counts
            // 每隔一分钟就生气，并设置不同的顾客数量
            customers[i] = (i % 10) + 1
            if i % 2 == 0 {
                grumpy[i] = 1
            } else {
                grumpy[i] = 0
                baseSatisfied += customers[i]
            }
        }
        
        // Manual calculation for expected result
        // 手动计算预期结果
        var maxGain = 0
        var currentGain = 0
        // Calculate initial window gain
        // 计算初始窗口增益
        for i in 0..<minutes {
            if grumpy[i] == 1 {
                currentGain += customers[i]
            }
        }
        maxGain = currentGain
        
        // Slide the window
        // 滑动窗口
        for i in minutes..<n {
            if grumpy[i] == 1 {
                currentGain += customers[i]
            }
            if grumpy[i - minutes] == 1 {
                currentGain -= customers[i - minutes]
            }
            if currentGain > maxGain {
                maxGain = currentGain
            }
        }
        let expected = baseSatisfied + maxGain

        let result = s.maxSatisfied(customers, grumpy, minutes)
        print(result)
        XCTAssertEqual(result, expected, "Failed for performance test with large N.")
    }
}