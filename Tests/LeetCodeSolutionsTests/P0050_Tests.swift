import XCTest
@testable import LeetCodeSolutions

final class P0050_Tests: XCTestCase {
    func test1() {
        let s = P0050_Solution1()
        
        // 示例1: 2的10次方
        XCTAssertEqual(s.myPow(2.00000, 10), 1024.00000, accuracy: 0.00001)
        
        // 示例2: 2.1的3次方
        XCTAssertEqual(s.myPow(2.10000, 3), 9.26100, accuracy: 0.00001)
        
        // 示例3: 2的-2次方
        XCTAssertEqual(s.myPow(2.00000, -2), 0.25000, accuracy: 0.00001)
        
        // 边界测试1: 0的任意次方 (n>0)
        XCTAssertEqual(s.myPow(0.00000, 5), 0.00000, accuracy: 0.00001)
        
        // 边界测试2: 任意数的0次方
        XCTAssertEqual(s.myPow(5.00000, 0), 1.00000, accuracy: 0.00001)
        
        // 边界测试3: 负数的奇数次方
        XCTAssertEqual(s.myPow(-2.00000, 3), -8.00000, accuracy: 0.00001)
        
        // 边界测试4: 1的任意次方
        XCTAssertEqual(s.myPow(1.00000, 100), 1.00000, accuracy: 0.00001)
    }
}