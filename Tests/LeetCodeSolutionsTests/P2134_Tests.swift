@testable import LeetCodeSolutions
import XCTest

final class P2134_Solution1_Tests: XCTestCase {
    let s = P2134_Solution1()

    // Test case from example 1
    // 示例1的测试用例
    func testExample1() {
        let nums = [0, 1, 0, 1, 1, 0, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 1, "Expected 1 for input \(nums), but got \(result)")
    }

    // Test case from example 2
    // 示例2的测试用例
    func testExample2() {
        let nums = [0, 1, 1, 1, 0, 0, 1, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 2, "Expected 2 for input \(nums), but got \(result)")
    }

    // Test case from example 3
    // 示例3的测试用例
    func testExample3() {
        let nums = [1, 1, 0, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with all ones
    // 所有元素为1的测试用例
    func testAllOnes() {
        let nums = [1, 1, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with all zeros
    // 所有元素为0的测试用例
    func testAllZeros() {
        let nums = [0, 0, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with single one
    // 单个元素为1的测试用例
    func testSingleOne() {
        let nums = [1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with single zero
    // 单个元素为0的测试用例
    func testSingleZero() {
        let nums = [0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with two elements [1,0]
    // 两个元素[1,0]的测试用例
    func testTwoElements10() {
        let nums = [1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with two elements [0,1]
    // 两个元素[0,1]的测试用例
    func testTwoElements01() {
        let nums = [0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [1,0,0]
    // 三个元素[1,0,0]的测试用例
    func testThreeElements100() {
        let nums = [1, 0, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [0,1,0]
    // 三个元素[0,1,0]的测试用例
    func testThreeElements010() {
        let nums = [0, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [0,0,1]
    // 三个元素[0,0,1]的测试用例
    func testThreeElements001() {
        let nums = [0, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [1,1,0]
    // 三个元素[1,1,0]的测试用例
    func testThreeElements110() {
        let nums = [1, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [0,1,1]
    // 三个元素[0,1,1]的测试用例
    func testThreeElements011() {
        let nums = [0, 1, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with three elements [1,0,1]
    // 三个元素[1,0,1]的测试用例
    func testThreeElements101() {
        let nums = [1, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [1,0,0,1]
    // 四个元素[1,0,0,1]的测试用例
    func testFourElements1001() {
        let nums = [1, 0, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [1,0,1,0]
    // 四个元素[1,0,1,0]的测试用例
    func testFourElements1010() {
        let nums = [1, 0, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 1, "Expected 1 for input \(nums), but got \(result)")
    }

    // Test case with four elements [0,1,0,1]
    // 四个元素[0,1,0,1]的测试用例
    func testFourElements0101() {
        let nums = [0, 1, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 1, "Expected 1 for input \(nums), but got \(result)")
    }

    // Test case with four elements [1,1,0,0]
    // 四个元素[1,1,0,0]的测试用例
    func testFourElements1100() {
        let nums = [1, 1, 0, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [0,0,1,1]
    // 四个元素[0,0,1,1]的测试用例
    func testFourElements0011() {
        let nums = [0, 0, 1, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [1,0,1,1]
    // 四个元素[1,0,1,1]的测试用例
    func testFourElements1011() {
        let nums = [1, 0, 1, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [1,1,1,0]
    // 四个元素[1,1,1,0]的测试用例
    func testFourElements1110() {
        let nums = [1, 1, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with four elements [0,1,1,1]
    // 四个元素[0,1,1,1]的测试用例
    func testFourElements0111() {
        let nums = [0, 1, 1, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with five elements [0,1,0,1,0]
    // 五个元素[0,1,0,1,0]的测试用例
    func testFiveElements01010() {
        let nums = [0, 1, 0, 1, 0]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 1, "Expected 1 for input \(nums), but got \(result)")
    }

    // Test case with five elements [1,0,0,0,1]
    // 五个元素[1,0,0,0,1]的测试用例
    func testFiveElements10001() {
        let nums = [1, 0, 0, 0, 1]
        let result = s.minSwaps(nums)
        print("Input: \(nums), Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for input \(nums), but got \(result)")
    }

    // Test case with large array all ones
    // 大数组全部为1的极限测试用例
    func testLargeArrayAllOnes() {
        let nums = Array(repeating: 1, count: 100_000)
        let result = s.minSwaps(nums)
        print("Input: Large array all ones, Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for large array all ones, but got \(result)")
    }

    // Test case with large array all zeros
    // 大数组全部为0的极限测试用例
    func testLargeArrayAllZeros() {
        let nums = Array(repeating: 0, count: 100_000)
        let result = s.minSwaps(nums)
        print("Input: Large array all zeros, Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for large array all zeros, but got \(result)")
    }

    // Test case with large array alternating zeros and ones
    // 大数组交替0和1的极限测试用例
    func testLargeArrayAlternating() {
        let nums = (0 ..< 100_000).map { $0 % 2 }
        let result = s.minSwaps(nums)
        print("Input: Large array alternating, Output: \(result)")
        XCTAssertEqual(result, 25000, "Expected 25000 for large array alternating, but got \(result)")
    }

    // Test case with large array one zero in the middle
    // 大数组中间有一个0的测试用例
    func testLargeArrayOneZero() {
        var nums = Array(repeating: 1, count: 100_000)
        nums[50000] = 0
        let result = s.minSwaps(nums)
        print("Input: Large array with one zero, Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for large array with one zero, but got \(result)")
    }

    // Test case with large array one one in the middle
    // 大数组中间有一个1的测试用例
    func testLargeArrayOneOne() {
        var nums = Array(repeating: 0, count: 100_000)
        nums[50000] = 1
        let result = s.minSwaps(nums)
        print("Input: Large array with one one, Output: \(result)")
        XCTAssertEqual(result, 0, "Expected 0 for large array with one one, but got \(result)")
    }
}
