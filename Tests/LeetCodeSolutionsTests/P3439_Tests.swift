import XCTest
@testable import LeetCodeSolutions

final class P3439_Solution1_Tests: XCTestCase {
    // Test case from example 1
    // 来自示例 1 的测试用例
    func testExample1() {
        let s = P3439_Solution1()
        let eventTime = 5, k = 1, startTime = [1,3], endTime = [2,5]
        let expected = 2
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Example 1: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on example 1")
    }

    // Test case from example 2
    // 来自示例 2 的测试用例
    func testExample2() {
        let s = P3439_Solution1()
        let eventTime = 10, k = 1, startTime = [0,2,9], endTime = [1,4,10]
        let expected = 6
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Example 2: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on example 2")
    }

    // Test case from example 3
    // 来自示例 3 的测试用例
    func testExample3() {
        let s = P3439_Solution1()
        let eventTime = 5, k = 2, startTime = [0,1,2,3,4], endTime = [1,2,3,4,5]
        let expected = 0
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Example 3: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on example 3")
    }
    
    // Test case where k allows moving all meetings
    // k 允许移动所有会议的测试用例
    func testMoveAllMeetings() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 3, startTime = [5, 8, 15], endTime = [7, 10, 17]
        let expected = 14
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Move All Meetings: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when k >= n")
    }

    // Test case where the best move creates the max gap at the beginning
    // 最佳移动在开头创建最大空隙的测试用例
    func testMaxGapAtBeginning() {
        let s = P3439_Solution1()
        let eventTime = 15, k = 1, startTime = [8, 10, 12], endTime = [9, 11, 13]
        let expected = 9
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Max Gap At Beginning: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed to create max gap at the beginning")
    }
    
    // Test case where the best move creates the max gap at the end
    // 最佳移动在结尾创建最大空隙的测试用例
    func testMaxGapAtEnd() {
        let s = P3439_Solution1()
        let eventTime = 15, k = 1, startTime = [1, 3, 5], endTime = [2, 4, 6]
        let expected = 10
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Max Gap At End: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed to create max gap at the end")
    }

    // Test case where k equals n, all meetings can be moved
    // k 等于 n，所有会议都可以移动的测试用例
    func testKEqualsN() {
        let s = P3439_Solution1()
        let eventTime = 30, k = 4, startTime = [2,5,15,25], endTime = [3,7,18,28]
        let expected = 21
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case K Equals N: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when k == n")
    }
    
    // Test case with minimum n=2
    // n=2 的最小情况测试用例
    func testMinimumN() {
        let s = P3439_Solution1()
        let eventTime = 10, k = 1, startTime = [2,8], endTime = [4,9]
        let expected = 6
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Minimum N: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on minimum n=2")
    }

    // Test case with all gaps being equal initially
    // 所有初始间隙都相等的测试用例
    func testAllGapsEqual() {
        let s = P3439_Solution1()
        let eventTime = 16, k = 2, startTime = [2,6,10], endTime = [4,8,12]
        let expected = 8
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case All Gaps Equal: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when initial gaps are equal")
    }

    // Test case with one very long meeting
    // 包含一个非常长会议的测试用例
    func testOneLongMeeting() {
        let s = P3439_Solution1()
        let eventTime = 100, k = 1, startTime = [0,90], endTime = [80,100]
        let expected = 10
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case One Long Meeting: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with one very long meeting")
    }
    
    // Test case with no initial internal gaps, but can create a gap
    // 没有初始内部间隙，但可以创建一个间隙的测试用例
    func testNoInitialInternalGaps() {
        let s = P3439_Solution1()
        let eventTime = 10, k = 2, startTime = [0,2,4,6], endTime = [2,4,6,8]
        let expected = 2
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case No Initial Internal Gaps: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when no initial internal gaps exist")
    }

    // Test case where k is large but less than n
    // k 较大但小于 n 的测试用例
    func testLargeKLessThanN() {
        let s = P3439_Solution1()
        let eventTime = 50, k = 4, startTime = [0,5,10,20,30,40], endTime = [2,7,12,22,32,42]
        let expected = 35
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Large K Less Than N: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with large k < n")
    }
    
    // Test case with large numbers for eventTime
    // eventTime 为大数的测试用例
    func testLargeNumbers() {
        let s = P3439_Solution1()
        let eventTime = 1_000_000_000, k = 1, startTime = [100, 1_000_000_000-200], endTime = [200, 1_000_000_000-100]
        let expected = 999999700
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Large Numbers: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with large numbers")
    }

    // Test case with meetings packed at the start
    // 会议集中在开始时间的测试用例
    func testMeetingsPackedAtStart() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 2, startTime = [0,1,2,3], endTime = [1,2,3,4]
        let expected = 16
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Meetings Packed At Start: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with meetings packed at start")
    }

    // Test case with meetings packed at the end
    // 会议集中在结束时间的测试用例
    func testMeetingsPackedAtEnd() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 2, startTime = [16,17,18,19], endTime = [17,18,19,20]
        let expected = 16
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Meetings Packed At End: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with meetings packed at end")
    }

    // Test case with alternating big and small gaps
    // 大小间隙交替的测试用例
    func testAlternatingGaps1() {
        let s = P3439_Solution1()
        let eventTime = 50, k = 2, startTime = [0,2,12,14,40], endTime = [1,11,13,39,41]
        let expected = 11
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Alternating Gaps 1: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with alternating gaps 1")
    }
    
    // Test case with a single best move in the middle
    // 唯一的最佳移动在中间的测试用例
    func testSingleBestMoveInMiddle() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 1, startTime = [0,2,10,12], endTime = [1,3,11,13]
        let expected = 8
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Single Best Move In Middle: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed with single best move in middle")
    }
    
    // Test case where k is larger than n, which is allowed by at most k
    // k 大于 n 的测试用例，符合“至多 k 次”的规则
    func testKLargerThanN() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 5, startTime = [5, 8, 15], endTime = [7, 10, 17]
        let n = startTime.count // n=3
        // Since k > n, we can move all meetings, which is equivalent to k=n case.
        // 因为 k > n，我们可以移动所有会议，这等价于 k=n 的情况。
        let expected = 14
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case K Larger Than N: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when k > n")
    }

    // Test case with k = n-1
    // k = n-1 的测试用例
    func testKEqualsNMinusOne() {
        let s = P3439_Solution1()
        let eventTime = 40, k = 3, startTime = [2,10,20,30], endTime = [5,13,23,33]
        let expected = 26
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case K Equals N Minus One: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when k = n-1")
    }
    
    // Test case with k = n-2
    // k = n-2 的测试用例
    func testKEqualsNMinusTwo() {
        let s = P3439_Solution1()
        let eventTime = 40, k = 2, startTime = [2,10,20,30], endTime = [5,13,23,33]
        let expected = 21
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case K Equals N Minus Two: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed when k = n-2")
    }

    // Test case with a single large gap in the middle
    // 中间有一个巨大间隙的测试用例
    func testSingleLargeMiddleGap() {
        let s = P3439_Solution1()
        let eventTime = 100, k = 2, startTime = [0, 5, 90, 95], endTime = [1, 6, 91, 96]
        let expected = 84 // Gap between 6 and 90 is 84. Merging with neighbors adds 1+1. No, merging makes 4+84 or 84+4. Window is 3. 4+84+4 = 92
        let gaps = [0, 4, 84, 4, 4]
        // k=2, window size 3
        // 0+4+84 = 88
        // 4+84+4 = 92
        // 84+4+4 = 92
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Single Large Middle Gap: Result = \(result), Expected = 92")
        XCTAssertEqual(result, 92, "Failed with single large middle gap")
    }

    // Boundary case: k=1, n=2
    // 边界情况: k=1, n=2
    func testBoundaryK1N2() {
        let s = P3439_Solution1()
        let eventTime = 100, k = 1, startTime = [10, 90], endTime = [20, 95]
        let expected = 80 // gaps [10, 70, 5], 10+70=80, 70+5=75
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Boundary K1 N2: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on boundary k=1, n=2")
    }
    
    // Test case where no move is beneficial
    // 移动会议没有好处的测试用例
    func testNoBeneficialMove() {
        let s = P3439_Solution1()
        let eventTime = 20, k = 1, startTime = [0, 10, 19], endTime = [1, 11, 20]
        let expected = 9 // gaps [0, 9, 8, 0], window 2: 0+9=9, 9+8=17, 8+0=8
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case No Beneficial Move: Result = \(result), Expected = 17")
        XCTAssertEqual(result, 17, "Failed when no move is beneficial")
    }
    
    // Performance test with large n and k
    // 大 n 和 k 的性能测试
    func testPerformanceLargeN() {
        let s = P3439_Solution1()
        let n = 100000
        let k = 10000
        var startTime = [Int](repeating: 0, count: n)
        var endTime = [Int](repeating: 0, count: n)
        for i in 0..<n {
            startTime[i] = 2 * i
            endTime[i] = 2 * i + 1
        }
        let eventTime = 2 * n
        // Gaps are [0, 1, 1, ..., 1, 1]. Total n+1 gaps.
        // k=10000, window size is 10001.
        // The max sum will be a window of 10001 ones.
        let expected = 10001
        
        self.measure {
            let result = s.maxFreeTime(eventTime, k, startTime, endTime)
            XCTAssertEqual(result, expected, "Failed on performance test")
        }
        let result = s.maxFreeTime(eventTime, k, startTime, endTime)
        print("Test Case Performance Large N: Result = \(result), Expected = \(expected)")
        XCTAssertEqual(result, expected, "Failed on performance test")
    }
}