import XCTest
@testable import LeetCodeSolutions

final class P2996_Tests: XCTestCase {
    func test1() {
        let s = P2996_Solution1()
        
        // 示例测试用例1
        XCTAssertEqual(s.missingInteger([1,2,3,2,5]), 6)
        
        // 示例测试用例2
        XCTAssertEqual(s.missingInteger([3,4,5,1,12,14,13]), 15)
        
        // 边界测试用例1：单个元素
        XCTAssertEqual(s.missingInteger([5]), 5)
        
        // 边界测试用例2：完全顺序前缀
        XCTAssertEqual(s.missingInteger([1,2,3,4,5]), 16)
        
        // 边界测试用例3：顺序前缀在中间断开
        XCTAssertEqual(s.missingInteger([1,2,3,1,2]), 7)
        
        // 边界测试用例4：所有元素相同
        XCTAssertEqual(s.missingInteger([2,2,2,2]), 2)
        
        // 边界测试用例5：最大值情况
        XCTAssertEqual(s.missingInteger([50,49,48]), 50)
    }
}