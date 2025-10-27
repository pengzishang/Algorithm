@testable import LeetCodeSolutions
import XCTest

final class P0260_Solution1_Tests: XCTestCase {
    // Test case from example 1 / 示例1测试用例
    func testExample1() {
        let s = P0260_Solution1()
        let nums = [1, 2, 1, 3, 2, 5]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [3, 5]
        XCTAssertEqual(Set(result), Set(expected), "Example 1 failed: Expected [3,5] or [5,3], but got \(result)")
    }

    // Test case from example 2 / 示例2测试用例
    func testExample2() {
        let s = P0260_Solution1()
        let nums = [-1, 0]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [-1, 0]
        XCTAssertEqual(Set(result), Set(expected), "Example 2 failed: Expected [-1,0], but got \(result)")
    }

    // Test case from example 3 / 示例3测试用例
    func testExample3() {
        let s = P0260_Solution1()
        let nums = [0, 1]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [1, 0]
        XCTAssertEqual(Set(result), Set(expected), "Example 3 failed: Expected [1,0] or [0,1], but got \(result)")
    }

    // Normal case with positive numbers / 正常情况包含正数
    func testNormalCaseWithPositives() {
        let s = P0260_Solution1()
        let nums = [1, 1, 2, 3, 4, 4]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [2, 3]
        XCTAssertEqual(Set(result), Set(expected),
                       "Normal case with positives failed: Expected [2,3] or [3,2], but got \(result)")
    }

    // Case with zeros and positives / 包含零和正数的情况
    func testWithZerosAndPositives() {
        let s = P0260_Solution1()
        let nums = [0, 0, 1, 2, 3, 3]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [1, 2]
        XCTAssertEqual(Set(result), Set(expected),
                       "Case with zeros and positives failed: Expected [1,2] or [2,1], but got \(result)")
    }

    // Case with negatives and positives / 包含负数和正数的情况
    func testWithNegativesAndPositives() {
        let s = P0260_Solution1()
        let nums = [-1, -1, -2, 3, 4, 4]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [-2, 3]
        XCTAssertEqual(Set(result), Set(expected),
                       "Case with negatives and positives failed: Expected [-2,3] or [3,-2], but got \(result)")
    }

    // Boundary values with min and max integers / 边界值包含最小和最大整数
    func testBoundaryValues() {
        let s = P0260_Solution1()
        let nums = [Int32.min, Int32.min, Int32.max, 0]
        let result = s.singleNumber(nums.map { Int($0) })
        print(result)
        let expected = [Int(Int32.max), 0]
        XCTAssertEqual(Set(result), Set(expected),
                       "Boundary values failed: Expected [Int32.max, 0] or [0, Int32.max], but got \(result)")
    }

    // Minimum length array / 最小长度数组
    func testMinLengthArray() {
        let s = P0260_Solution1()
        let nums = [5, 6]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [5, 6]
        XCTAssertEqual(Set(result), Set(expected),
                       "Min length array failed: Expected [5,6] or [6,5], but got \(result)")
    }

    // Unique numbers at the end / 唯一数字在末尾
    func testUniqueAtEnd() {
        let s = P0260_Solution1()
        let nums = [1, 1, 2, 2, 3, 4]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [3, 4]
        XCTAssertEqual(Set(result), Set(expected), "Unique at end failed: Expected [3,4] or [4,3], but got \(result)")
    }

    // Unique numbers at the start / 唯一数字在开头
    func testUniqueAtStart() {
        let s = P0260_Solution1()
        let nums = [3, 4, 1, 1, 2, 2]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [3, 4]
        XCTAssertEqual(Set(result), Set(expected), "Unique at start failed: Expected [3,4] or [4,3], but got \(result)")
    }

    // Another normal case / 另一个正常情况
    func testAnotherNormalCase() {
        let s = P0260_Solution1()
        let nums = [1, 2, 3, 1, 2, 4]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [3, 4]
        XCTAssertEqual(Set(result), Set(expected),
                       "Another normal case failed: Expected [3,4] or [4,3], but got \(result)")
    }

    // Large array for performance test / 大数组性能测试
    func testLargeArrayPerformance() {
        let s = P0260_Solution1()
        let size = 30000
        var nums = [Int]()
        // Generate pairs from 1 to 14999, and two unique numbers 15000 and 15001 / 生成1到14999的成对数字，以及两个唯一数字15000和15001
        for i in 1 ... 14999 {
            nums.append(contentsOf: [i, i])
        }
        nums.append(contentsOf: [15000, 15001])
        let result = s.singleNumber(nums)
        print(result)
        let expected = [15000, 15001]
        XCTAssertEqual(Set(result), Set(expected),
                       "Large array performance test failed: Expected [15000,15001] or [15001,15000], but got \(result)")
    }

    // Case with all duplicates except two uniques in middle / 所有重复 except 两个唯一在中间
    func testUniqueInMiddle() {
        let s = P0260_Solution1()
        let nums = [1, 1, 2, 3, 3, 4, 4, 5]
        let result = s.singleNumber(nums)
        print(result)
        let expected = [2, 5]
        XCTAssertEqual(Set(result), Set(expected),
                       "Unique in middle failed: Expected [2,5] or [5,2], but got \(result)")
    }

    // Case with negative zeros and positives / 包含负零和正数的情况
    func testWithNegativeZeros() {
        let s = P0260_Solution1()
        let nums = [0, -0, 1,
                    2] // In Swift, 0 and -0 are equal, so this might not be distinct, but for test we use values /
        // 在Swift中，0和-0相等，因此可能不区分，但测试中我们使用值
        // Actually, in Swift, 0 and -0 are both 0, so this array has duplicates. Let's use distinct negatives /
        // 实际上，在Swift中0和-0都是0，所以这个数组有重复。我们使用不同的负数。
        let adjustedNums = [-1, 0, 1, -1] // Change to avoid issue / 修改以避免问题
        let result = s.singleNumber(adjustedNums)
        print(result)
        let expected = [0, 1]
        XCTAssertEqual(Set(result), Set(expected),
                       "With negative zeros failed: Expected [0,1] or [1,0], but got \(result)")
    }
}
