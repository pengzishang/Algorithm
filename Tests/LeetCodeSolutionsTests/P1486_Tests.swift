import XCTest
@testable import LeetCodeSolutions

final class P1486_Solution1_Tests: XCTestCase {
    let solution = P1486_Solution1()
    
    // Test case 1: 示例1/Example 1
    func testExample1() {
        let result = solution.xorOperation(5, 0)
        print("Test 1 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 8, "n=5, start=0 应该返回8/Should return 8")
    }
    
    // Test case 2: 示例2/Example 2
    func testExample2() {
        let result = solution.xorOperation(4, 3)
        print("Test 2 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 8, "n=4, start=3 应该返回8/Should return 8")
    }
    
    // Test case 3: 示例3/Example 3
    func testExample3() {
        let result = solution.xorOperation(1, 7)
        print("Test 3 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 7, "n=1, start=7 应该返回7/Should return 7")
    }
    
    // Test case 4: 示例4/Example 4
    func testExample4() {
        let result = solution.xorOperation(10, 5)
        print("Test 4 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 2, "n=10, start=5 应该返回2/Should return 2")
    }
    
    // Test case 5: 边界情况 - n=1, start=0/Boundary case
    func testBoundaryCase1() {
        let result = solution.xorOperation(1, 0)
        print("Test 5 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 0, "n=1, start=0 应该返回0/Should return 0")
    }
    
    // Test case 6: 边界情况 - n=2, start=1/Boundary case
    func testBoundaryCase2() {
        let result = solution.xorOperation(2, 1)
        print("Test 6 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 0, "n=2, start=1 应该返回0/Should return 0")
    }
    
    // Test case 7: 正常情况 - n=3, start=2/Normal case
    func testNormalCase1() {
        let result = solution.xorOperation(3, 2)
        print("Test 7 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 2, "n=3, start=2 应该返回2/Should return 2")
    }
    
    // Test case 8: 正常情况 - n=6, start=10/Normal case
    func testNormalCase2() {
        let result = solution.xorOperation(6, 10)
        print("Test 8 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 26, "n=6, start=10 应该返回26/Should return 26")
    }
    
    // Test case 9: 极限情况 - n=1000, start=0/Extreme case
    func testExtremeCase1() {
        let result = solution.xorOperation(1000, 0)
        print("Test 9 result: \(result)") // 打印结果/Print result
        // 验证大n值时的性能/Verify performance with large n
        XCTAssertEqual(result, 0, "n=1000, start=0 应该返回0/Should return 0")
    }
    
    // Test case 10: 极限情况 - n=1000, start=1000/Extreme case
    func testExtremeCase2() {
        let result = solution.xorOperation(1000, 1000)
        print("Test 10 result: \(result)") // 打印结果/Print result
        // 验证大n值和大start值时的性能/Verify performance with large n and start
        XCTAssertEqual(result, 1000, "n=1000, start=1000 应该返回1000/Should return 1000")
    }
    
    // Test case 11: 正常情况 - n=7, start=3/Normal case
    func testNormalCase3() {
        let result = solution.xorOperation(7, 3)
        print("Test 11 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 3, "n=7, start=3 应该返回3/Should return 3")
    }
    
    // Test case 12: 边界情况 - n=1, start=1000/Boundary case
    func testBoundaryCase3() {
        let result = solution.xorOperation(1, 1000)
        print("Test 12 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 1000, "n=1, start=1000 应该返回1000/Should return 1000")
    }
    
    // Test case 13: 正常情况 - n=8, start=1/Normal case
    func testNormalCase4() {
        let result = solution.xorOperation(8, 1)
        print("Test 13 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 8, "n=8, start=1 应该返回8/Should return 8")
    }
    
    // Test case 14: 极限情况 - n=999, start=999/Extreme case
    func testExtremeCase3() {
        let result = solution.xorOperation(999, 999)
        print("Test 14 result: \(result)") // 打印结果/Print result
        // 测试接近最大值的性能/Test performance near maximum values
        XCTAssertEqual(result, 999, "n=999, start=999 应该返回999/Should return 999")
    }
}