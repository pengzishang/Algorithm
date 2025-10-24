import XCTest
@testable import LeetCodeSolutions

final class P0001_Tests: XCTestCase {
    func test1() {
        let s = P0001_Solution1()
        
        // 示例测试用例
        // Example 1
        XCTAssertEqual(s.twoSum([2, 7, 11, 15], 9), [0, 1])
        
        // Example 2
        XCTAssertEqual(s.twoSum([3, 2, 4], 6), [1, 2])
        
        // Example 3
        XCTAssertEqual(s.twoSum([3, 3], 6), [0, 1])
        
        // 边界测试用例
        // 最小长度数组
        XCTAssertEqual(s.twoSum([1, 2], 3), [0, 1])
        
        // 包含负数的数组
        XCTAssertEqual(s.twoSum([-1, -2, -3, -4, -5], -8), [2, 4])
        
        // 大数测试
        XCTAssertEqual(s.twoSum([1000000000, 2000000000, 3000000000], 5000000000), [1, 2])
    }
}