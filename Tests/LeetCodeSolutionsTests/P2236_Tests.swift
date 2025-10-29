import XCTest
@testable import LeetCodeSolutions

final class P2236_Solution1_Tests: XCTestCase {
    let solution = P2236_Solution1()
    
    // Test case 1: Normal case where root equals sum of children
    // 测试用例1：正常情况，根节点值等于子节点值之和
    func testRootEqualsSumOfChildren_case1() {
        let root = TreeNode(10)
        root.left = TreeNode(4)
        root.right = TreeNode(6)
        
        let result = solution.checkTree(root)
        print("Test case 1 result: \(result)")
        XCTAssertEqual(result, true, "根节点值10应该等于左子节点4和右子节点6的和")
    }
    
    // Test case 2: Normal case where root doesn't equal sum of children
    // 测试用例2：正常情况，根节点值不等于子节点值之和
    func testRootNotEqualsSumOfChildren_case2() {
        let root = TreeNode(5)
        root.left = TreeNode(3)
        root.right = TreeNode(1)
        
        let result = solution.checkTree(root)
        print("Test case 2 result: \(result)")
        XCTAssertEqual(result, false, "根节点值5不应该等于左子节点3和右子节点1的和")
    }
    
    // Test case 3: Edge case with zero values
    // 测试用例3：边界情况，包含零值
    func testWithZeroValues_case3() {
        let root = TreeNode(0)
        root.left = TreeNode(0)
        root.right = TreeNode(0)
        
        let result = solution.checkTree(root)
        print("Test case 3 result: \(result)")
        XCTAssertEqual(result, true, "根节点值0应该等于左子节点0和右子节点0的和")
    }
    
    // Test case 4: Edge case with negative values
    // 测试用例4：边界情况，包含负值
    func testWithNegativeValues_case4() {
        let root = TreeNode(-5)
        root.left = TreeNode(-3)
        root.right = TreeNode(-2)
        
        let result = solution.checkTree(root)
        print("Test case 4 result: \(result)")
        XCTAssertEqual(result, true, "根节点值-5应该等于左子节点-3和右子节点-2的和")
    }
    
    // Test case 5: Edge case with maximum positive values
    // 测试用例5：边界情况，使用最大正值
    func testWithMaxPositiveValues_case5() {
        let root = TreeNode(200)
        root.left = TreeNode(100)
        root.right = TreeNode(100)
        
        let result = solution.checkTree(root)
        print("Test case 5 result: \(result)")
        XCTAssertEqual(result, true, "根节点值200应该等于左子节点100和右子节点100的和")
    }
    
    // Test case 6: Edge case with minimum negative values
    // 测试用例6：边界情况，使用最小负值
    func testWithMinNegativeValues_case6() {
        let root = TreeNode(-200)
        root.left = TreeNode(-100)
        root.right = TreeNode(-100)
        
        let result = solution.checkTree(root)
        print("Test case 6 result: \(result)")
        XCTAssertEqual(result, true, "根节点值-200应该等于左子节点-100和右子节点-100的和")
    }
    
    // Test case 7: Large positive numbers
    // 测试用例7：大正数情况
    func testWithLargePositiveNumbers_case7() {
        let root = TreeNode(1000000)
        root.left = TreeNode(500000)
        root.right = TreeNode(500000)
        
        let result = solution.checkTree(root)
        print("Test case 7 result: \(result)")
        XCTAssertEqual(result, true, "根节点值1000000应该等于左子节点500000和右子节点500000的和")
    }
    
    // Test case 8: Large negative numbers
    // 测试用例8：大负数情况
    func testWithLargeNegativeNumbers_case8() {
        let root = TreeNode(-1000000)
        root.left = TreeNode(-500000)
        root.right = TreeNode(-500000)
        
        let result = solution.checkTree(root)
        print("Test case 8 result: \(result)")
        XCTAssertEqual(result, true, "根节点值-1000000应该等于左子节点-500000和右子节点-500000的和")
    }
    
    // Test case 9: Mixed positive and negative values
    // 测试用例9：正负混合值情况
    func testWithMixedPositiveNegative_case9() {
        let root = TreeNode(0)
        root.left = TreeNode(100)
        root.right = TreeNode(-100)
        
        let result = solution.checkTree(root)
        print("Test case 9 result: \(result)")
        XCTAssertEqual(result, true, "根节点值0应该等于左子节点100和右子节点-100的和")
    }
    
    // Test case 10: One child is zero
    // 测试用例10：一个子节点为零的情况
    func testWithOneChildZero_case10() {
        let root = TreeNode(10)
        root.left = TreeNode(10)
        root.right = TreeNode(0)
        
        let result = solution.checkTree(root)
        print("Test case 10 result: \(result)")
        XCTAssertEqual(result, true, "根节点值10应该等于左子节点10和右子节点0的和")
    }
    
    // Test case 11: Both children are zero but root is not
    // 测试用例11：两个子节点都为零但根节点不为零
    func testWithBothChildrenZero_case11() {
        let root = TreeNode(5)
        root.left = TreeNode(0)
        root.right = TreeNode(0)
        
        let result = solution.checkTree(root)
        print("Test case 11 result: \(result)")
        XCTAssertEqual(result, false, "根节点值5不应该等于左子节点0和右子节点0的和")
    }
    
    // Test case 12: Performance test with large numbers
    // 测试用例12：大数性能测试
    func testPerformanceWithLargeNumbers_case12() {
        let root = TreeNode(Int.max)
        root.left = TreeNode(Int.max / 2)
        root.right = TreeNode(Int.max / 2 + 1)
        
        measure {
            let result = solution.checkTree(root)
            print("Performance test result: \(result)")
            XCTAssertEqual(result, true, "根节点值Int.max应该等于两个子节点的和")
        }
    }
}