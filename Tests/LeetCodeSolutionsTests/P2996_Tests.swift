import XCTest

@testable import LeetCodeSolutions

final class P2996_Tests: XCTestCase {
    func test1() {
        let s = P2996_Solution1()
        // 这一组是证明我错误的一组, 没有成功理解题目意思
//        XCTAssertEqual(s.missingInteger([37, 1, 2, 9, 5, 8, 5, 2, 9, 4]), 38)

        XCTAssertEqual(s.missingInteger([46, 8, 2, 4, 1, 4, 10, 2, 4, 10, 2, 5, 7, 3, 1]), 47)

        // 边界测试用例2：完全顺序前缀
        XCTAssertEqual(s.missingInteger([1, 2, 3, 4, 5]), 15)
        // 示例测试用例1
        XCTAssertEqual(s.missingInteger([1, 2, 3, 2, 5]), 6)

        // 示例测试用例2
        XCTAssertEqual(s.missingInteger([3, 4, 5, 1, 12, 14, 13]), 15)

        // 边界测试用例1：单个元素
        XCTAssertEqual(s.missingInteger([5]), 6)

        // 边界测试用例3：顺序前缀在中间断开
        XCTAssertEqual(s.missingInteger([1, 2, 3, 1, 2]), 6)

        // 边界测试用例4：所有元素相同
        XCTAssertEqual(s.missingInteger([2, 2, 2, 2]), 3)

        // 边界测试用例5：最大值情况
        XCTAssertEqual(s.missingInteger([50, 49, 48]), 51)
    }

    func test2() {
        let s = P2996_Solution2()
        // 这一组是证明我错误的一组
        XCTAssertEqual(s.missingInteger([37, 1, 2, 9, 5, 8, 5, 2, 9, 4]), 38)

        XCTAssertEqual(s.missingInteger([46, 8, 2, 4, 1, 4, 10, 2, 4, 10, 2, 5, 7, 3, 1]), 47)

        // 边界测试用例2：完全顺序前缀
        XCTAssertEqual(s.missingInteger([1, 2, 3, 4, 5]), 15)
        // 示例测试用例1
        XCTAssertEqual(s.missingInteger([1, 2, 3, 2, 5]), 6)

        // 示例测试用例2
        XCTAssertEqual(s.missingInteger([3, 4, 5, 1, 12, 14, 13]), 15)

        // 边界测试用例1：单个元素
        XCTAssertEqual(s.missingInteger([5]), 6)

        // 边界测试用例3：顺序前缀在中间断开
        XCTAssertEqual(s.missingInteger([1, 2, 3, 1, 2]), 6)

        // 边界测试用例4：所有元素相同
        XCTAssertEqual(s.missingInteger([2, 2, 2, 2]), 3)

        // 边界测试用例5：最大值情况
        XCTAssertEqual(s.missingInteger([50, 49, 48]), 51)
    }
}
