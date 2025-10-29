import XCTest
@testable import LeetCodeSolutions

final class P1512_Solution1_Tests: XCTestCase {
    let solution = P1512_Solution1()
    
    // Test case 1: Example from description
    // 测试用例1: 题目描述中的示例
    func testGoodPairsExample1() {
        let nums = [1,2,3,1,1,3]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 1 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 4, "应该返回4个好数对: (0,3), (0,4), (3,4), (2,5)")
    }
    
    // Test case 2: All elements are the same
    // 测试用例2: 所有元素都相同
    func testGoodPairsExample2() {
        let nums = [1,1,1,1]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 2 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 6, "应该有6个好数对: C(4,2) = 6")
    }
    
    // Test case 3: No good pairs
    // 测试用例3: 没有好数对
    func testGoodPairsExample3() {
        let nums = [1,2,3]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 3 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "所有元素都不相同，应该返回0")
    }
    
    // Test case 4: Single element array
    // 测试用例4: 单个元素数组
    func testGoodPairsSingleElement() {
        let nums = [5]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 4 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "单个元素数组没有好数对")
    }
    
    // Test case 5: Two identical elements
    // 测试用例5: 两个相同元素
    func testGoodPairsTwoIdentical() {
        let nums = [2,2]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 5 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 1, "两个相同元素应该有1个好数对")
    }
    
    // Test case 6: Three identical elements
    // 测试用例6: 三个相同元素
    func testGoodPairsThreeIdentical() {
        let nums = [3,3,3]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 6 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 3, "三个相同元素应该有3个好数对: C(3,2) = 3")
    }
    
    // Test case 7: Multiple groups of identical elements
    // 测试用例7: 多组相同元素
    func testGoodPairsMultipleGroups() {
        let nums = [1,1,2,2,3,3]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 7 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 3, "三组相同元素，每组2个，应该有3个好数对")
    }
    
    // Test case 8: Mixed with duplicates and unique elements
    // 测试用例8: 混合重复和唯一元素
    func testGoodPairsMixed() {
        let nums = [1,2,1,2,1,3]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 8 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 4, "应该有4个好数对")
    }
    
    // Test case 9: Maximum length array with all same elements
    // 测试用例9: 最大长度数组，所有元素相同
    func testGoodPairsMaxLengthSame() {
        let nums = Array(repeating: 1, count: 100)
        let result = solution.numIdenticalPairs(nums)
        print("Test case 9 - Input: [1 repeated 100 times], Output: \(result)")
        XCTAssertEqual(result, 4950, "100个相同元素应该有C(100,2) = 4950个好数对")
    }
    
    // Test case 10: Maximum length array with all different elements
    // 测试用例10: 最大长度数组，所有元素不同
    func testGoodPairsMaxLengthDifferent() {
        let nums = Array(1...100)
        let result = solution.numIdenticalPairs(nums)
        print("Test case 10 - Input: [1,2,3,...,100], Output: \(result)")
        XCTAssertEqual(result, 0, "所有元素都不同，应该返回0")
    }
    
    // Test case 11: Large array with multiple duplicates
    // 测试用例11: 大型数组，包含多个重复
    func testGoodPairsLargeArray() {
        let nums = Array(repeating: [1,2,3,4,5], count: 20).flatMap { $0 }
        let result = solution.numIdenticalPairs(nums)
        print("Test case 11 - Input: large array with duplicates, Output: \(result)")
        XCTAssertEqual(result, 1900, "应该有1900个好数对")
    }
    
    // Test case 12: Empty array
    // 测试用例12: 空数组
    func testGoodPairsEmptyArray() {
        let nums: [Int] = []
        let result = solution.numIdenticalPairs(nums)
        print("Test case 12 - Input: empty array, Output: \(result)")
        XCTAssertEqual(result, 0, "空数组应该返回0")
    }
    
    // Test case 13: Array with two different duplicate groups
    // 测试用例13: 包含两个不同重复组的数组
    func testGoodPairsTwoDuplicateGroups() {
        let nums = [1,1,1,2,2,2,2]
        let result = solution.numIdenticalPairs(nums)
        print("Test case 13 - Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 9, "3个1和4个2，应该有C(3,2) + C(4,2) = 3 + 6 = 9个好数对")
    }
}