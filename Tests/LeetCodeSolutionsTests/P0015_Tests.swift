import XCTest
@testable import LeetCodeSolutions

final class P0015_Tests: XCTestCase {
    func test1() {
        let s = P0015_Solution1()
        
        // 示例1: 正常情况，包含多个解
        let result1 = s.threeSum([-1,0,1,2,-1,-4])
        XCTAssertEqual(result1.count, 2)
        XCTAssertTrue(result1.contains { $0.sorted() == [-1,-1,2].sorted() })
        XCTAssertTrue(result1.contains { $0.sorted() == [-1,0,1].sorted() })
        
        // 示例2: 无解情况
        let result2 = s.threeSum([0,1,1])
        XCTAssertEqual(result2, [])
        
        // 示例3: 全零情况
        let result3 = s.threeSum([0,0,0])
        XCTAssertEqual(result3, [[0,0,0]])
        
        // 边界测试1: 最小长度数组
        let result4 = s.threeSum([-1,0,1])
        XCTAssertEqual(result4, [[-1,0,1]])
        
        // 边界测试2: 包含重复元素但结果不重复
        let result5 = s.threeSum([-1,-1,0,0,1,1])
        XCTAssertEqual(result5.count, 2)
        XCTAssertTrue(result5.contains { $0.sorted() == [-1,0,1].sorted() })
        XCTAssertTrue(result5.contains { $0.sorted() == [0,0,0].sorted() })
        
        // 边界测试3: 所有正数，无解
        let result6 = s.threeSum([1,2,3,4,5])
        XCTAssertEqual(result6, [])
        
        // 边界测试4: 所有负数，无解
        let result7 = s.threeSum([-1,-2,-3,-4,-5])
        XCTAssertEqual(result7, [])
    }
}