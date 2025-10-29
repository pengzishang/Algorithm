@testable import LeetCodeSolutions
import XCTest

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
        XCTAssertEqual(result, 2, "n=2, start=1 应该返回0/Should return 2")
    }

    // Test case 9: 极限情况 - n=1000, start=0/Extreme case
    func testExtremeCase1() {
        let result = solution.xorOperation(1000, 0)
        print("Test 9 result: \(result)") // 打印结果/Print result
        // 验证大n值时的性能/Verify performance with large n
        XCTAssertEqual(result, 0, "n=1000, start=0 应该返回0/Should return 0")
    }

    // Test case 12: 边界情况 - n=1, start=1000/Boundary case
    func testBoundaryCase3() {
        let result = solution.xorOperation(1, 1000)
        print("Test 12 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 1000, "n=1, start=1000 应该返回1000/Should return 1000")
    }
}

final class P1486_Solution2_Tests: XCTestCase {
    let solution = P1486_Solution2()

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
        XCTAssertEqual(result, 2, "n=2, start=1 应该返回0/Should return 2")
    }

    // Test case 9: 极限情况 - n=1000, start=0/Extreme case
    func testExtremeCase1() {
        let result = solution.xorOperation(1000, 0)
        print("Test 9 result: \(result)") // 打印结果/Print result
        // 验证大n值时的性能/Verify performance with large n
        XCTAssertEqual(result, 0, "n=1000, start=0 应该返回0/Should return 0")
    }

    // Test case 12: 边界情况 - n=1, start=1000/Boundary case
    func testBoundaryCase3() {
        let result = solution.xorOperation(1, 1000)
        print("Test 12 result: \(result)") // 打印结果/Print result
        XCTAssertEqual(result, 1000, "n=1, start=1000 应该返回1000/Should return 1000")
    }
}
