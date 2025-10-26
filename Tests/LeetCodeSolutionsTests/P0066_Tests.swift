import XCTest
@testable import LeetCodeSolutions

final class P0066_Tests: XCTestCase {
    func test1() {
        let s = P0066_Solution1()
        let digits = [1,2,3]
        let result = s.plusOne(digits)
        print("Test 1 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [1,2,4], "测试1失败: 123 + 1 = 124")
    }
    
    func test2() {
        let s = P0066_Solution1()
        let digits = [4,3,2,1]
        let result = s.plusOne(digits)
        print("Test 2 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [4,3,2,2], "测试2失败: 4321 + 1 = 4322")
    }
    
    func test3() {
        let s = P0066_Solution1()
        let digits = [9]
        let result = s.plusOne(digits)
        print("Test 3 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [1,0], "测试3失败: 9 + 1 = 10")
    }
    
    func test4() {
        let s = P0066_Solution1()
        let digits = [1,9,9]
        let result = s.plusOne(digits)
        print("Test 4 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [2,0,0], "测试4失败: 199 + 1 = 200")
    }
    
    func test5() {
        let s = P0066_Solution1()
        let digits = [9,9,9]
        let result = s.plusOne(digits)
        print("Test 5 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [1,0,0,0], "测试5失败: 999 + 1 = 1000")
    }
    
    func test6() {
        let s = P0066_Solution1()
        let digits = [0]
        let result = s.plusOne(digits)
        print("Test 6 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [1], "测试6失败: 0 + 1 = 1")
    }
    
    func test7() {
        let s = P0066_Solution1()
        let digits = [1,0,0,0,0]
        let result = s.plusOne(digits)
        print("Test 7 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [1,0,0,0,1], "测试7失败: 10000 + 1 = 10001")
    }
    
    func test8() {
        let s = P0066_Solution1()
        let digits = [8,9,9,9]
        let result = s.plusOne(digits)
        print("Test 8 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [9,0,0,0], "测试8失败: 8999 + 1 = 9000")
    }
    
    func test9() {
        let s = P0066_Solution1()
        let digits = [2,4,9,3,9]
        let result = s.plusOne(digits)
        print("Test 9 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [2,4,9,4,0], "测试9失败: 24939 + 1 = 24940")
    }
    
    func test10() {
        let s = P0066_Solution1()
        let digits = [7,8,7,8,7,8,7,8,7,8]
        let result = s.plusOne(digits)
        print("Test 10 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [7,8,7,8,7,8,7,8,7,9], "测试10失败: 7878787878 + 1 = 7878787879")
    }
    
    func test11() {
        let s = P0066_Solution1()
        let digits = [5,6,7,8,9]
        let result = s.plusOne(digits)
        print("Test 11 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [5,6,7,9,0], "测试11失败: 56789 + 1 = 56790")
    }
    
    func test12() {
        let s = P0066_Solution1()
        let digits = [1]
        let result = s.plusOne(digits)
        print("Test 12 - Input: \(digits), Output: \(result)")
        XCTAssertEqual(result, [2], "测试12失败: 1 + 1 = 2")
    }
    
    func test13() {
        let s = P0066_Solution1()
        // 极限情况：最大长度100位，全部是9
        let digits = Array(repeating: 9, count: 100)
        let result = s.plusOne(digits)
        print("Test 13 - Input length: \(digits.count), Output length: \(result.count)")
        XCTAssertEqual(result.count, 101, "测试13失败: 100个9加1应该变成101位")
        XCTAssertEqual(result[0], 1, "测试13失败: 首位应该是1")
        XCTAssertEqual(result[1...], Array(repeating: 0, count: 100), "测试13失败: 后面100位都应该是0")
    }
    
    func test14() {
        let s = P0066_Solution1()
        // 极限情况：最大长度100位，最后一位不是9
        var digits = Array(repeating: 9, count: 100)
        digits[99] = 8
        let result = s.plusOne(digits)
        print("Test 14 - Input length: \(digits.count), Output length: \(result.count)")
        XCTAssertEqual(result.count, 100, "测试14失败: 应该保持100位长度")
        XCTAssertEqual(result[98], 9, "测试14失败: 第99位应该是9")
        XCTAssertEqual(result[99], 9, "测试14失败: 最后一位应该是9")
    }
    
    func test15() {
        let s = P0066_Solution1()
        // 性能测试：处理大数组
        let digits = Array(1...100).map { _ in Int.random(in: 0...8) } + [9]
        let startTime = Date()
        let result = s.plusOne(digits)
        let endTime = Date()
        let executionTime = endTime.timeIntervalSince(startTime)
        print("Test 15 - Input length: \(digits.count), Execution time: \(executionTime) seconds")
        XCTAssertLessThan(executionTime, 1.0, "测试15失败: 执行时间超过1秒")
    }
}