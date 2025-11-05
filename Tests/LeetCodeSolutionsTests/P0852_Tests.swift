@testable import LeetCodeSolutions
import XCTest

final class P0852_Solution1_Tests: XCTestCase {
    // Test case from example 1
    // 示例 1 中的测试用例
    func testExample_1() {
        let s = P0852_Solution1()
        let arr = [0, 1, 0]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for example 1 with input \(arr)")
    }

    // Test case from example 2
    // 示例 2 中的测试用例
    func testExample_2() {
        let s = P0852_Solution1()
        let arr = [0, 2, 1, 0]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for example 2 with input \(arr)")
    }

    // Test case from example 3
    // 示例 3 中的测试用例
    func testExample_3() {
        let s = P0852_Solution1()
        let arr = [0, 10, 5, 2]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for example 3 with input \(arr)")
    }

    // Test case with peak in the middle of a short array
    // 峰值在短数组中间的测试用例
    func testPeakInMiddle_4() {
        let s = P0852_Solution1()
        let arr = [1, 3, 5, 4, 2]
        let expected = 2
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for peak in the middle with input \(arr)")
    }

    // Test case with peak near the start
    // 峰值靠近数组开头的测试用例
    func testPeakNearStart_5() {
        let s = P0852_Solution1()
        let arr = [3, 5, 3, 2, 0]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for peak near the start with input \(arr)")
    }

    // Test case with peak near the end
    // 峰值靠近数组结尾的测试用例
    func testPeakNearEnd_6() {
        let s = P0852_Solution1()
        let arr = [1, 2, 3, 5, 4]
        let expected = 3
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for peak near the end with input \(arr)")
    }

    // Test case with minimum length array (3 elements)
    // 最小长度数组（3个元素）的测试用例
    func testMinimumLengthArray_7() {
        let s = P0852_Solution1()
        let arr = [1, 100, 1]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for minimum length array with input \(arr)")
    }

    // Test case with a longer, more complex array
    // 较长且更复杂的数组的测试用例
    func testComplexArray_8() {
        let s = P0852_Solution1()
        let arr = [24, 69, 100, 99, 79, 78, 67, 36, 26, 19]
        let expected = 2
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for complex array with input \(arr)")
    }

    // Test case with a perfectly symmetrical array
    // 完全对称数组的测试用例
    func testSymmetricalArray_9() {
        let s = P0852_Solution1()
        let arr = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]
        let expected = 5
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for symmetrical array with input \(arr)")
    }

    // Test case with a long ascending part and short descending part
    // 上升部分长，下降部分短的测试用例
    func testLongAscending_10() {
        let s = P0852_Solution1()
        let arr = [1, 2, 3, 4, 5, 7, 6]
        let expected = 5
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for long ascending part with input \(arr)")
    }

    // Test case with a short ascending part and long descending part
    // 上升部分短，下降部分长的测试用例
    func testLongDescending_11() {
        let s = P0852_Solution1()
        let arr = [1, 10, 9, 8, 7, 6]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for long descending part with input \(arr)")
    }

    // Test case with a very long symmetrical array
    // 超长对称数组的测试用例
    func testVeryLongSymmetricalArray_12() {
        let s = P0852_Solution1()
        let arr = [0, 1, 2, 3, 4, 5, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
        let expected = 6
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for very long symmetrical array with input \(arr)")
    }

    // Test case with random-ish values
    // 包含随机值的测试用例
    func testRandomValues_13() {
        let s = P0852_Solution1()
        let arr = [40, 48, 61, 75, 100, 99, 98, 39, 30, 10]
        let expected = 4
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for random values with input \(arr)")
    }

    // Test case with peak located late in the array
    // 峰值位于数组后半部分的测试用例
    func testLatePeak_14() {
        let s = P0852_Solution1()
        let arr = [18, 29, 38, 59, 98, 100, 99, 98, 90]
        let expected = 5
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for late peak with input \(arr)")
    }

    // Test case with a sharp drop after the peak
    // 峰值后急剧下降的测试用例
    func testSharpDrop_15() {
        let s = P0852_Solution1()
        let arr = [1, 2, 100, 3, 2, 1]
        let expected = 2
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for sharp drop with input \(arr)")
    }

    // Test case with an early peak and long decline
    // 峰值早现且下降部分长的测试用例
    func testEarlyPeakLongDecline_16() {
        let s = P0852_Solution1()
        let arr = [1, 100, 99, 98, 97, 96]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for early peak and long decline with input \(arr)")
    }

    // Test case with a late peak and short decline
    // 峰值晚现且下降部分短的测试用例
    func testLatePeakShortDecline_17() {
        let s = P0852_Solution1()
        let arr = [1, 2, 3, 4, 5, 100, 99]
        let expected = 5
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for late peak and short decline with input \(arr)")
    }

    // Boundary test: second to last element is peak
    // 边界测试：倒数第二个元素是峰值
    func testPeakAtSecondToLast_18() {
        let s = P0852_Solution1()
        let arr = [0, 1, 2, 3, 10, 5]
        let expected = 4
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for peak at second to last element with input \(arr)")
    }

    // Boundary test: second element is peak
    // 边界测试：第二个元素是峰值
    func testPeakAtSecond_19() {
        let s = P0852_Solution1()
        let arr = [0, 10, 5, 3, 2, 1]
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for arr=\(arr) is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for peak at second element with input \(arr)")
    }

    // Performance test with a large array, peak in the middle
    // 性能测试：大型数组，峰值在中间
    func testLargeArrayPeakInMiddle_20() {
        let s = P0852_Solution1()
        let arr = Array(0 ... 49999) + Array((0 ... 49998).reversed())
        let expected = 49999
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for large array with peak in middle is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for large array with peak in the middle")
    }

    // Performance test with a large array, peak near the start
    // 性能测试：大型数组，峰值靠近开头
    func testLargeArrayPeakAtStart_21() {
        let s = P0852_Solution1()
        let arr = [0, 100_000] + Array(stride(from: 99999, to: 0, by: -1))
        let expected = 1
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for large array with peak at start is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for large array with peak near the start")
    }

    // Performance test with a large array, peak near the end
    // 性能测试：大型数组，峰值靠近结尾
    func testLargeArrayPeakAtEnd_22() {
        let s = P0852_Solution1()
        let arr = Array(0 ... 99997) + [100_000, 0]
        let expected = 99998
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for large array with peak at end is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for large array with peak near the end")
    }

    // Performance test with large numbers in a large array
    // 性能测试：包含大数值的大型数组
    func testLargeArrayWithLargeNumbers_23() {
        let s = P0852_Solution1()
        var ascendingPart = [Int]()
        for i in 0 ..< 50000 {
            ascendingPart.append(i * 10)
        }
        var descendingPart = [Int]()
        for i in (0 ..< 49999).reversed() {
            descendingPart.append(i * 10 + 5)
        }
        let arr = ascendingPart + descendingPart
        let expected = 49999
        var result: Int?
        measure {
            result = s.peakIndexInMountainArray(arr)
        }
        print("Result for large array with large numbers is \(result ?? -1)")
        XCTAssertEqual(result, expected, "Failed for large array with large numbers")
    }
}
