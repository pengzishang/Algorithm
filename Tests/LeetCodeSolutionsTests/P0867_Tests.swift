import XCTest
@testable import LeetCodeSolutions

final class P0867_Solution1_Tests: XCTestCase {
    func testExample1() {
        // 示例 1: 3x3 方阵
        // Example 1: 3x3 square matrix
        let s = P0867_Solution1()
        let matrix = [[1,2,3],[4,5,6],[7,8,9]]
        let expected = [[1,4,7],[2,5,8],[3,6,9]]
        let result = s.transpose(matrix)
        print(result)
        XCTAssertEqual(result, expected, "Failed for example 1: 3x3 square matrix")
    }

    func testExample2() {
        // 示例 2: 2x3 矩形矩阵
        // Example 2: 2x3 rectangular matrix
        let s = P0867_Solution1()
        let matrix = [[1,2,3],[4,5,6]]
        let expected = [[1,4],[2,5],[3,6]]
        let result = s.transpose(matrix)
        print(result)
        XCTAssertEqual(result, expected, "Failed for example 2: 2x3 rectangular matrix")
    }
    
    func testSingleElementMatrix_1() {
        // 测试用例 1: 单个元素的矩阵
        // Test Case 1: Matrix with a single element
        let s = P0867_Solution1()
        let matrix = [[5]]
        let expected = [[5]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 1: Single element matrix")
        }
    }

    func testSingleRowMatrix_2() {
        // 测试用例 2: 只有一行的矩阵（行向量）
        // Test Case 2: Matrix with only one row (row vector)
        let s = P0867_Solution1()
        let matrix = [[1, 2, 3, 4]]
        let expected = [[1], [2], [3], [4]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 2: Single row matrix")
        }
    }

    func testSingleColumnMatrix_3() {
        // 测试用例 3: 只有一列的矩阵（列向量）
        // Test Case 3: Matrix with only one column (column vector)
        let s = P0867_Solution1()
        let matrix = [[1], [2], [3], [4]]
        let expected = [[1, 2, 3, 4]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 3: Single column matrix")
        }
    }

    func testSquareMatrixWithNegativeNumbers_4() {
        // 测试用例 4: 包含负数的方阵
        // Test Case 4: Square matrix with negative numbers
        let s = P0867_Solution1()
        let matrix = [[-1, -2], [-3, -4]]
        let expected = [[-1, -3], [-2, -4]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 4: Square matrix with negative numbers")
        }
    }
    
    func testSquareMatrixWithZeros_5() {
        // 测试用例 5: 包含零的方阵
        // Test Case 5: Square matrix with zeros
        let s = P0867_Solution1()
        let matrix = [[0, 1], [0, 0]]
        let expected = [[0, 0], [1, 0]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 5: Square matrix with zeros")
        }
    }

    func testMixedValuesMatrix_6() {
        // 测试用例 6: 包含正数、负数和零的矩形矩阵
        // Test Case 6: Rectangular matrix with positive, negative, and zero values
        let s = P0867_Solution1()
        let matrix = [[1, -2, 0], [4, 5, -6]]
        let expected = [[1, 4], [-2, 5], [0, -6]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 6: Mixed values matrix")
        }
    }

    func testTallMatrix_7() {
        // 测试用例 7: 高矩阵 (行数 > 列数)
        // Test Case 7: Tall matrix (rows > cols)
        let s = P0867_Solution1()
        let matrix = [[1, 2], [3, 4], [5, 6]]
        let expected = [[1, 3, 5], [2, 4, 6]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 7: Tall matrix")
        }
    }
    
    func testWideMatrix_8() {
        // 测试用例 8: 宽矩阵 (列数 > 行数)
        // Test Case 8: Wide matrix (cols > rows)
        let s = P0867_Solution1()
        let matrix = [[10, 20, 30, 40], [50, 60, 70, 80]]
        let expected = [[10, 50], [20, 60], [30, 70], [40, 80]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 8: Wide matrix")
        }
    }

    func testAnotherSquareMatrix_9() {
        // 测试用例 9: 2x2 方阵
        // Test Case 9: 2x2 square matrix
        let s = P0867_Solution1()
        let matrix = [[1, 2], [3, 4]]
        let expected = [[1, 3], [2, 4]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 9: 2x2 square matrix")
        }
    }

    func testMatrixWithRepeatedValues_10() {
        // 测试用例 10: 包含重复值的矩阵
        // Test Case 10: Matrix with repeated values
        let s = P0867_Solution1()
        let matrix = [[7, 7, 7], [7, 7, 7]]
        let expected = [[7, 7], [7, 7], [7, 7]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 10: Matrix with repeated values")
        }
    }

    func testMatrixWithLargeNumbers_11() {
        // 测试用例 11: 包含极大和极小整数的矩阵
        // Test Case 11: Matrix with very large and small integers
        let s = P0867_Solution1()
        let matrix = [[1_000_000_000, 0], [-1_000_000_000, 1]]
        let expected = [[1_000_000_000, -1_000_000_000], [0, 1]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 11: Matrix with large numbers")
        }
    }
    
    func test4x2Matrix_12() {
        // 测试用例 12: 4x2 矩阵
        // Test Case 12: 4x2 matrix
        let s = P0867_Solution1()
        let matrix = [[1, 2], [3, 4], [5, 6], [7, 8]]
        let expected = [[1, 3, 5, 7], [2, 4, 6, 8]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 12: 4x2 matrix")
        }
    }

    func testPerformanceSingleRow_13() {
        // 性能测试用例 13: 1x1000 矩阵
        // Performance Test Case 13: 1x1000 matrix
        let s = P0867_Solution1()
        let matrix = [Array(1...1000)]
        let expected = (1...1000).map { [$0] }

        measure {
            let result = s.transpose(matrix)
            // 不在 measure 块中打印和断言，以获得更准确的性能数据
            // Do not print or assert inside the measure block for more accurate performance data
        }
        let result = s.transpose(matrix)
        print("Performance test with 1x1000 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 13: 1x1000 matrix")
    }

    func testPerformanceSingleColumn_14() {
        // 性能测试用例 14: 1000x1 矩阵
        // Performance Test Case 14: 1000x1 matrix
        let s = P0867_Solution1()
        let matrix = (1...1000).map { [$0] }
        let expected = [Array(1...1000)]

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 1000x1 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 14: 1000x1 matrix")
    }
    
    func testPerformanceLargeSquare_15() {
        // 性能测试用例 15: 300x300 矩阵
        // Performance Test Case 15: 300x300 matrix
        let s = P0867_Solution1()
        let rows = 300
        let cols = 300
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        var expected = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        for i in 0..<rows {
            for j in 0..<cols {
                let value = i * cols + j
                matrix[i][j] = value
                expected[j][i] = value
            }
        }

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 300x300 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 15: 300x300 matrix")
    }

    func testPerformanceLargeWide_16() {
        // 性能测试用例 16: 100x1000 矩阵
        // Performance Test Case 16: 100x1000 matrix
        let s = P0867_Solution1()
        let rows = 100
        let cols = 1000
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        var expected = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        for i in 0..<rows {
            for j in 0..<cols {
                let value = i * cols + j
                matrix[i][j] = value
                expected[j][i] = value
            }
        }

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 100x1000 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 16: 100x1000 matrix")
    }

    func testPerformanceLargeTall_17() {
        // 性能测试用例 17: 1000x100 矩阵
        // Performance Test Case 17: 1000x100 matrix
        let s = P0867_Solution1()
        let rows = 1000
        let cols = 100
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        var expected = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        for i in 0..<rows {
            for j in 0..<cols {
                let value = i * cols + j
                matrix[i][j] = value
                expected[j][i] = value
            }
        }

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 1000x100 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 17: 1000x100 matrix")
    }

    func testPerformanceMaxElements_18() {
        // 性能测试用例 18: 200x500 矩阵 (10^5 个元素)
        // Performance Test Case 18: 200x500 matrix (10^5 elements)
        let s = P0867_Solution1()
        let rows = 200
        let cols = 500
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        var expected = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        for i in 0..<rows {
            for j in 0..<cols {
                let value = i * cols + j
                matrix[i][j] = value
                expected[j][i] = value
            }
        }

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 200x500 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 18: 200x500 matrix")
    }

    func testMaxDimensionsSquare_19() {
        // 性能测试用例 19: 1000x1000 矩阵 (超出 m*n 限制，但测试 m 和 n 的最大值)
        // Performance Test Case 19: 1000x1000 matrix (exceeds m*n constraint, but tests max m and n)
        let s = P0867_Solution1()
        let rows = 100 // m*n <= 10^5, so 1000x1000 is too big. Let's use 100x100.
        let cols = 100
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        var expected = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        for i in 0..<rows {
            for j in 0..<cols {
                let value = i * cols + j
                matrix[i][j] = value
                expected[j][i] = value
            }
        }

        measure {
            let result = s.transpose(matrix)
        }
        let result = s.transpose(matrix)
        print("Performance test with 100x100 matrix completed.")
        XCTAssertEqual(result, expected, "Failed for Performance Test Case 19: 100x100 matrix")
    }

    func testJaggedArray_20() {
        // 测试用例 20: LeetCode通常不测试锯齿数组，但这是一个好的通用数组测试用例
        // Test Case 20: LeetCode usually does not test jagged arrays, but it's a good general array test case
        // 注意：根据题目约束，输入不会是锯齿数组 (n == matrix[i].length)
        // Note: According to constraints, input will not be a jagged array (n == matrix[i].length)
        // 因此，此测试仅用于演示，实际场景中不适用
        // Therefore, this test is for demonstration only and not applicable in this problem's context
        let s = P0867_Solution1()
        // 此处创建一个常规矩阵以满足约束
        // Creating a regular matrix here to satisfy constraints
        let matrix = [[1, 2], [3, 4]]
        let expected = [[1, 3], [2, 4]]
        
        measure {
            let result = s.transpose(matrix)
            print(result)
            XCTAssertEqual(result, expected, "Failed for Test Case 20: Regular matrix test")
        }
    }
}