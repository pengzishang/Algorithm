import XCTest
@testable import LeetCodeSolutions

final class P1470_Solution1_Tests: XCTestCase {
    // Test case from example 1
    // 示例 1 中的测试用例
    func testShuffle_example1() {
        let s = P1470_Solution1()
        let nums = [2, 5, 1, 3, 4, 7]
        let n = 3
        let expected = [2, 3, 5, 4, 1, 7]
        let result = s.shuffle(nums, n)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 1 with input nums: \(nums), n: \(n)")
    }

    // Test case from example 2
    // 示例 2 中的测试用例
    func testShuffle_example2() {
        let s = P1470_Solution1()
        let nums = [1, 2, 3, 4, 4, 3, 2, 1]
        let n = 4
        let expected = [1, 4, 2, 3, 3, 2, 4, 1]
        let result = s.shuffle(nums, n)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 2 with input nums: \(nums), n: \(n)")
    }

    // Test case from example 3
    // 示例 3 中的测试用例
    func testShuffle_example3() {
        let s = P1470_Solution1()
        let nums = [1, 1, 2, 2]
        let n = 2
        let expected = [1, 2, 1, 2]
        let result = s.shuffle(nums, n)
        print(result)
        XCTAssertEqual(result, expected, "Failed on example 3 with input nums: \(nums), n: \(n)")
    }

    // Boundary case: minimum n (n=1)
    // 边界情况：最小的 n (n=1)
    func testShuffle_minN_case4() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [10, 20]
            let n = 1
            let expected = [10, 20]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on minimum n case with input nums: \(nums), n: \(n)")
        }
    }
    
    // Case with all same numbers
    // 所有数字都相同的用例
    func testShuffle_allSameNumbers_case5() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [5, 5, 5, 5, 5, 5]
            let n = 3
            let expected = [5, 5, 5, 5, 5, 5]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on all same numbers case with input nums: \(nums), n: \(n)")
        }
    }
    
    // Case with sequential numbers
    // 数字连续的用例
    func testShuffle_sequentialNumbers_case6() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [1, 2, 3, 4, 5, 6]
            let n = 3
            let expected = [1, 4, 2, 5, 3, 6]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on sequential numbers case with input nums: \(nums), n: \(n)")
        }
    }
    
    // Case with large distinct numbers
    // 较大且不重复的数字的用例
    func testShuffle_largeDistinctNumbers_case7() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [10, 20, 30, 40, 50, 60, 70, 80]
            let n = 4
            let expected = [10, 50, 20, 60, 30, 70, 40, 80]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on large distinct numbers case with input nums: \(nums), n: \(n)")
        }
    }
    
    // Case with duplicates in x and y parts
    // x 和 y部分都包含重复数字的用例
    func testShuffle_duplicates_case8() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [7, 8, 7, 8]
            let n = 2
            let expected = [7, 7, 8, 8]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on duplicates case with input nums: \(nums), n: \(n)")
        }
    }

    // Case with mixed order of numbers
    // 数字顺序混合的用例
    func testShuffle_mixedOrder_case9() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [3, 2, 1, 6, 5, 4]
            let n = 3
            let expected = [3, 6, 2, 5, 1, 4]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on mixed order case with input nums: \(nums), n: \(n)")
        }
    }

    // Case with max values from constraints
    // 使用约束条件中的最大值的用例
    func testShuffle_maxValues_case10() {
        let s = P1470_Solution1()
        self.measure {
            let nums = [1000, 1, 1000, 2]
            let n = 2
            let expected = [1000, 1000, 1, 2]
            let result = s.shuffle(nums, n)
            print(result)
            XCTAssertEqual(result, expected, "Failed on max values case with input nums: \(nums), n: \(n)")
        }
    }

    // Large size case, but not maximum
    // 较大规模的用例，但不是最大规模
    func testShuffle_largeSize_case11() {
        let s = P1470_Solution1()
        self.measure {
            let n = 250
            let xPart = Array(1...n)
            let yPart = Array((n+1)...(2*n))
            let nums = xPart + yPart
            
            var expected: [Int] = []
            for i in 0..<n {
                expected.append(xPart[i])
                expected.append(yPart[i])
            }
            
            let result = s.shuffle(nums, n)
            // print(result) // Printing a large array can slow down tests significantly, so it's commented out.
            // 打印大型数组会显著减慢测试速度，因此注释掉。
            XCTAssertEqual(result, expected, "Failed on large size case with n: \(n)")
        }
    }

    // Extreme case: maximum n for performance check
    // 极限情况：最大的 n，用于性能测试
    func testShuffle_maxSize_performance_case12() {
        let s = P1470_Solution1()
        self.measure {
            let n = 500
            let xPart = Array(1...n)
            let yPart = Array((n+1)...(2*n))
            let nums = xPart + yPart
            
            var expected: [Int] = []
            for i in 0..<n {
                expected.append(xPart[i])
                expected.append(yPart[i])
            }
            
            let result = s.shuffle(nums, n)
            // print(result) // Printing a large array can slow down tests significantly, so it's commented out.
            // 打印大型数组会显著减慢测试速度，因此注释掉。
            XCTAssertEqual(result, expected, "Failed on max size performance case with n: \(n)")
        }
    }
    
    // Extreme case: maximum n with all values at max
    // 极限情况：最大的 n 并且所有值都是最大值
    func testShuffle_maxSizeWithMaxValues_performance_case13() {
        let s = P1470_Solution1()
        self.measure {
            let n = 500
            let nums = Array(repeating: 1000, count: 2 * n)
            let expected = Array(repeating: 1000, count: 2 * n)

            let result = s.shuffle(nums, n)
            // print(result) // Printing a large array can slow down tests significantly, so it's commented out.
            // 打印大型数组会显著减慢测试速度，因此注释掉。
            XCTAssertEqual(result, expected, "Failed on max size with max values case with n: \(n)")
        }
    }
}