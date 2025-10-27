@testable import LeetCodeSolutions
import XCTest

final class P0137_Solution1_Tests: XCTestCase {
    func testExample1() {
        // 示例1：基础测试用例
        // Example 1: Basic test case
        let s = P0137_Solution1()
        let nums = [2, 2, 3, 2]
        let result = s.singleNumber(nums)
        print("示例1结果: \(result)") // Example 1 result
        XCTAssertEqual(result, 3, "应该返回唯一的数字3") // Should return the unique number 3
    }

    func testExample2() {
        // 示例2：包含99的测试用例
        // Example 2: Test case with 99
        let s = P0137_Solution1()
        let nums = [0, 1, 0, 1, 0, 1, 99]
        let result = s.singleNumber(nums)
        print("示例2结果: \(result)") // Example 2 result
        XCTAssertEqual(result, 99, "应该返回唯一的数字99") // Should return the unique number 99
    }

    func testSingleElement() {
        // 测试只有一个元素的情况
        // Test case with only one element
        let s = P0137_Solution1()
        let nums = [5]
        let result = s.singleNumber(nums)
        print("单元素测试结果: \(result)") // Single element test result
        XCTAssertEqual(result, 5, "应该返回唯一的数字5") // Should return the unique number 5
    }

    func testNegativeNumbers() {
        // 测试包含负数的情况
        // Test case with negative numbers
        let s = P0137_Solution1()
        let nums = [-1, -1, -1, -2]
        let result = s.singleNumber(nums)
        print("负数测试结果: \(result)") // Negative numbers test result
        XCTAssertEqual(result, -2, "应该返回唯一的数字-2") // Should return the unique number -2
    }

    func testMixedNumbers() {
        // 测试混合正负数的情况
        // Test case with mixed positive and negative numbers
        let s = P0137_Solution1()
        let nums = [1, -1, 1, -1, 1, -1, 7]
        let result = s.singleNumber(nums)
        print("混合数字测试结果: \(result)") // Mixed numbers test result
        XCTAssertEqual(result, 7, "应该返回唯一的数字7") // Should return the unique number 7
    }

    func testLargeNumbers() {
        // 测试大数字的情况
        // Test case with large numbers
        let s = P0137_Solution1()
        let nums = [Int(Int32.max), Int(Int32.max), Int(Int32.max), Int(Int32.min)]
        let result = s.singleNumber(nums)
        print("大数字测试结果: \(result)") // Large numbers test result
        XCTAssertEqual(Int32(result), Int32.min, "应该返回唯一的数字Int32.min") // Should return the unique number Int.min
    }

    func testZeroCase() {
        // 测试0作为唯一数字的情况
        // Test case with 0 as the unique number
        let s = P0137_Solution1()
        let nums = [0, 1, 1, 1, 3, 3, 3, 2, 2, 2]
        let result = s.singleNumber(nums)
        print("零值测试结果: \(result)") // Zero test result
        XCTAssertEqual(result, 0, "应该返回唯一的数字0") // Should return the unique number 0
    }

    func testRepeatedPattern() {
        // 测试重复模式的情况
        // Test case with repeated pattern
        let s = P0137_Solution1()
        let nums = [1, 2, 3, 1, 2, 3, 1, 2, 3, 4]
        let result = s.singleNumber(nums)
        print("重复模式测试结果: \(result)") // Repeated pattern test result
        XCTAssertEqual(result, 4, "应该返回唯一的数字4") // Should return the unique number 4
    }

    func testAllSameExceptOne() {
        // 测试除了一个元素外其他都相同的情况
        // Test case where all elements are same except one
        let s = P0137_Solution1()
        let nums = [5, 5, 5, 5, 5, 5, 8]
        let result = s.singleNumber(nums)
        print("全相同测试结果: \(result)") // All same test result
        XCTAssertEqual(result, 8, "应该返回唯一的数字8") // Should return the unique number 8
    }

    func testConsecutiveNumbers() {
        // 测试连续数字的情况
        // Test case with consecutive numbers
        let s = P0137_Solution1()
        let nums = [10, 11, 10, 11, 10, 11, 12]
        let result = s.singleNumber(nums)
        print("连续数字测试结果: \(result)") // Consecutive numbers test result
        XCTAssertEqual(result, 12, "应该返回唯一的数字12") // Should return the unique number 12
    }

    func testLargeArrayPerformance() {
        // 性能测试：大数据量情况
        // Performance test: Large data volume case
        let s = P0137_Solution1()
        var nums = [Int]()
        let uniqueNumber = 99999

        // 生成包含30000个元素的大数组
        // Generate large array with 30000 elements
        for i in 0 ..< 10000 {
            nums.append(contentsOf: [i, i, i])
        }
        nums.append(uniqueNumber)

        measure {
            let result = s.singleNumber(nums)
            print("性能测试结果: \(result)") // Performance test result
            XCTAssertEqual(result, uniqueNumber, "应该返回唯一的数字\(uniqueNumber)") // Should return the unique number
        }
    }

    func testMinArraySize() {
        // 测试最小数组大小的情况
        // Test case with minimum array size
        let s = P0137_Solution1()
        let nums = [42]
        let result = s.singleNumber(nums)
        print("最小数组测试结果: \(result)") // Minimum array test result
        XCTAssertEqual(result, 42, "应该返回唯一的数字42") // Should return the unique number 42
    }

    func testMaxArraySize() {
        // 测试最大数组大小的情况
        // Test case with maximum array size
        let s = P0137_Solution1()
        var nums = [Int]()
        let uniqueNumber = 77777

        // 生成接近30000个元素的数组
        // Generate array close to 30000 elements
        for i in 0 ..< 9999 {
            nums.append(contentsOf: [i, i, i])
        }
        nums.append(uniqueNumber)

        let result = s.singleNumber(nums)
        print("最大数组测试结果: \(result)") // Maximum array test result
        XCTAssertEqual(result, uniqueNumber, "应该返回唯一的数字\(uniqueNumber)") // Should return the unique number
    }
}

final class P0137_Solution2_Tests: XCTestCase {
    func testExample1() {
        // 示例1：基础测试用例
        // Example 1: Basic test case
        let s = P0137_Solution2()
        let nums = [2, 2, 3, 2]
        let result = s.singleNumber(nums)
        print("示例1结果: \(result)") // Example 1 result
        XCTAssertEqual(result, 3, "应该返回唯一的数字3") // Should return the unique number 3
    }

    func testExample2() {
        // 示例2：包含99的测试用例
        // Example 2: Test case with 99
        let s = P0137_Solution2()
        let nums = [0, 1, 0, 1, 0, 1, 99]
        let result = s.singleNumber(nums)
        print("示例2结果: \(result)") // Example 2 result
        XCTAssertEqual(result, 99, "应该返回唯一的数字99") // Should return the unique number 99
    }

    func testSingleElement() {
        // 测试只有一个元素的情况
        // Test case with only one element
        let s = P0137_Solution2()
        let nums = [5]
        let result = s.singleNumber(nums)
        print("单元素测试结果: \(result)") // Single element test result
        XCTAssertEqual(result, 5, "应该返回唯一的数字5") // Should return the unique number 5
    }

    func testNegativeNumbers() {
        // 测试包含负数的情况
        // Test case with negative numbers
        let s = P0137_Solution2()
        let nums = [-1, -1, -1, -2]
        let result = s.singleNumber(nums)
        print("负数测试结果: \(result)") // Negative numbers test result
        XCTAssertEqual(result, -2, "应该返回唯一的数字-2") // Should return the unique number -2
    }

    func testMixedNumbers() {
        // 测试混合正负数的情况
        // Test case with mixed positive and negative numbers
        let s = P0137_Solution2()
        let nums = [1, -1, 1, -1, 1, -1, 7]
        let result = s.singleNumber(nums)
        print("混合数字测试结果: \(result)") // Mixed numbers test result
        XCTAssertEqual(result, 7, "应该返回唯一的数字7") // Should return the unique number 7
    }

    func testLargeNumbers() {
        // 测试大数字的情况
        // Test case with large numbers
        let s = P0137_Solution2()
        let nums = [Int(Int32.max), Int(Int32.max), Int(Int32.max), Int(Int32.min)]
        let result = s.singleNumber(nums)
        print("大数字测试结果: \(result)") // Large numbers test result
        XCTAssertEqual(Int32(result), Int32.min, "应该返回唯一的数字Int32.min") // Should return the unique number Int.min
    }

    func testZeroCase() {
        // 测试0作为唯一数字的情况
        // Test case with 0 as the unique number
        let s = P0137_Solution2()
        let nums = [0, 1, 1, 1, 3, 3, 3, 2, 2, 2]
        let result = s.singleNumber(nums)
        print("零值测试结果: \(result)") // Zero test result
        XCTAssertEqual(result, 0, "应该返回唯一的数字0") // Should return the unique number 0
    }

    func testRepeatedPattern() {
        // 测试重复模式的情况
        // Test case with repeated pattern
        let s = P0137_Solution2()
        let nums = [1, 2, 3, 1, 2, 3, 1, 2, 3, 4]
        let result = s.singleNumber(nums)
        print("重复模式测试结果: \(result)") // Repeated pattern test result
        XCTAssertEqual(result, 4, "应该返回唯一的数字4") // Should return the unique number 4
    }

    func testAllSameExceptOne() {
        // 测试除了一个元素外其他都相同的情况
        // Test case where all elements are same except one
        let s = P0137_Solution2()
        let nums = [5, 5, 5, 5, 5, 5, 8]
        let result = s.singleNumber(nums)
        print("全相同测试结果: \(result)") // All same test result
        XCTAssertEqual(result, 8, "应该返回唯一的数字8") // Should return the unique number 8
    }

    func testConsecutiveNumbers() {
        // 测试连续数字的情况
        // Test case with consecutive numbers
        let s = P0137_Solution2()
        let nums = [10, 11, 10, 11, 10, 11, 12]
        let result = s.singleNumber(nums)
        print("连续数字测试结果: \(result)") // Consecutive numbers test result
        XCTAssertEqual(result, 12, "应该返回唯一的数字12") // Should return the unique number 12
    }

    func testLargeArrayPerformance() {
        // 性能测试：大数据量情况
        // Performance test: Large data volume case
        let s = P0137_Solution2()
        var nums = [Int]()
        let uniqueNumber = 99999

        // 生成包含30000个元素的大数组
        // Generate large array with 30000 elements
        for i in 0 ..< 10000 {
            nums.append(contentsOf: [i, i, i])
        }
        nums.append(uniqueNumber)

        measure {
            let result = s.singleNumber(nums)
            print("性能测试结果: \(result)") // Performance test result
            XCTAssertEqual(result, uniqueNumber, "应该返回唯一的数字\(uniqueNumber)") // Should return the unique number
        }
    }

    func testMinArraySize() {
        // 测试最小数组大小的情况
        // Test case with minimum array size
        let s = P0137_Solution2()
        let nums = [42]
        let result = s.singleNumber(nums)
        print("最小数组测试结果: \(result)") // Minimum array test result
        XCTAssertEqual(result, 42, "应该返回唯一的数字42") // Should return the unique number 42
    }

    func testMaxArraySize() {
        // 测试最大数组大小的情况
        // Test case with maximum array size
        let s = P0137_Solution2()
        var nums = [Int]()
        let uniqueNumber = 77777

        // 生成接近30000个元素的数组
        // Generate array close to 30000 elements
        for i in 0 ..< 9999 {
            nums.append(contentsOf: [i, i, i])
        }
        nums.append(uniqueNumber)

        let result = s.singleNumber(nums)
        print("最大数组测试结果: \(result)") // Maximum array test result
        XCTAssertEqual(result, uniqueNumber, "应该返回唯一的数字\(uniqueNumber)") // Should return the unique number
    }
}
