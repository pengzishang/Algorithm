import XCTest
@testable import LeetCodeSolutions

final class P2235_Tests: XCTestCase {
    func test1() {
        let s = P2235_Solution1()
        
        // 示例1: 正数相加
        XCTAssertEqual(s.sum(12, 5), 17)
        
        // 示例2: 负数与正数相加
        XCTAssertEqual(s.sum(-10, 4), -6)
        
        // 边界测试1: 两个负数相加
        XCTAssertEqual(s.sum(-100, -50), -150)
        
        // 边界测试2: 最大值边界
        XCTAssertEqual(s.sum(100, 100), 200)
        
        // 边界测试3: 零值测试
        XCTAssertEqual(s.sum(0, 0), 0)
        
        // 边界测试4: 正数与零相加
        XCTAssertEqual(s.sum(50, 0), 50)
        
        // 边界测试5: 负数与零相加
        XCTAssertEqual(s.sum(-30, 0), -30)
    }
}