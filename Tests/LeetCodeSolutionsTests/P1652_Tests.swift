import XCTest
@testable import LeetCodeSolutions

final class P1652_Solution1_Tests: XCTestCase {
    // Test Example 1: k > 0 case
    // 测试示例1: k > 0 的情况
    func testExample1() {
        let s = P1652_Solution1()
        let code = [5,7,1,4]
        let k = 3
        let result = s.decrypt(code, k)
        print("Test Example 1 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [12,10,16,13], "Failed for code = [5,7,1,4], k = 3")
    }

    // Test Example 2: k == 0 case
    // 测试示例2: k == 0 的情况
    func testExample2() {
        let s = P1652_Solution1()
        let code = [1,2,3,4]
        let k = 0
        let result = s.decrypt(code, k)
        print("Test Example 2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [0,0,0,0], "Failed for code = [1,2,3,4], k = 0")
    }

    // Test Example 3: k < 0 case
    // 测试示例3: k < 0 的情况
    func testExample3() {
        let s = P1652_Solution1()
        let code = [2,4,9,3]
        let k = -2
        let result = s.decrypt(code, k)
        print("Test Example 3 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [12,5,6,13], "Failed for code = [2,4,9,3], k = -2")
    }

    // Test single element with k = 0
    // 测试单个元素且 k = 0
    func testSingleElementK0() {
        let s = P1652_Solution1()
        let code = [1]
        let k = 0
        let result = s.decrypt(code, k)
        print("Test Single Element K0 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [0], "Failed for code = [1], k = 0")
    }

    // Test two elements with k = 1
    // 测试两个元素且 k = 1
    func testTwoElementsK1() {
        let s = P1652_Solution1()
        let code = [1,2]
        let k = 1
        let result = s.decrypt(code, k)
        print("Test Two Elements K1 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [2,1], "Failed for code = [1,2], k = 1")
    }

    // Test two elements with k = -1
    // 测试两个元素且 k = -1
    func testTwoElementsKNeg1() {
        let s = P1652_Solution1()
        let code = [1,2]
        let k = -1
        let result = s.decrypt(code, k)
        print("Test Two Elements KNeg1 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [2,1], "Failed for code = [1,2], k = -1")
    }

    // Test two elements with k = 0
    // 测试两个元素且 k = 0
    func testTwoElementsK0() {
        let s = P1652_Solution1()
        let code = [1,2]
        let k = 0
        let result = s.decrypt(code, k)
        print("Test Two Elements K0 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [0,0], "Failed for code = [1,2], k = 0")
    }

    // Test three elements with k = 1
    // 测试三个元素且 k = 1
    func testThreeElementsK1() {
        let s = P1652_Solution1()
        let code = [1,2,3]
        let k = 1
        let result = s.decrypt(code, k)
        print("Test Three Elements K1 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [2,3,1], "Failed for code = [1,2,3], k = 1")
    }

    // Test three elements with k = 2
    // 测试三个元素且 k = 2
    func testThreeElementsK2() {
        let s = P1652_Solution1()
        let code = [1,2,3]
        let k = 2
        let result = s.decrypt(code, k)
        print("Test Three Elements K2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [5,4,3], "Failed for code = [1,2,3], k = 2")
    }

    // Test three elements with k = -1
    // 测试三个元素且 k = -1
    func testThreeElementsKNeg1() {
        let s = P1652_Solution1()
        let code = [1,2,3]
        let k = -1
        let result = s.decrypt(code, k)
        print("Test Three Elements KNeg1 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [3,1,2], "Failed for code = [1,2,3], k = -1")
    }

    // Test three elements with k = -2
    // 测试三个元素且 k = -2
    func testThreeElementsKNeg2() {
        let s = P1652_Solution1()
        let code = [1,2,3]
        let k = -2
        let result = s.decrypt(code, k)
        print("Test Three Elements KNeg2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [5,4,3], "Failed for code = [1,2,3], k = -2")
    }

    // Test four elements with k = 2
    // 测试四个元素且 k = 2
    func testFourElementsK2() {
        let s = P1652_Solution1()
        let code = [1,2,3,4]
        let k = 2
        let result = s.decrypt(code, k)
        print("Test Four Elements K2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [5,7,5,3], "Failed for code = [1,2,3,4], k = 2")
    }

    // Test four elements with k = -2
    // 测试四个元素且 k = -2
    func testFourElementsKNeg2() {
        let s = P1652_Solution1()
        let code = [1,2,3,4]
        let k = -2
        let result = s.decrypt(code, k)
        print("Test Four Elements KNeg2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [7,5,3,5], "Failed for code = [1,2,3,4], k = -2")
    }

    // Test all ones with n=5 and k=3
    // 测试全1数组，n=5且k=3
    func testAllOnesK3() {
        let s = P1652_Solution1()
        let code = [1,1,1,1,1]
        let k = 3
        let result = s.decrypt(code, k)
        print("Test All Ones K3 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [3,3,3,3,3], "Failed for code = [1,1,1,1,1], k = 3")
    }

    // Test all ones with n=5 and k=-3
    // 测试全1数组，n=5且k=-3
    func testAllOnesKNeg3() {
        let s = P1652_Solution1()
        let code = [1,1,1,1,1]
        let k = -3
        let result = s.decrypt(code, k)
        print("Test All Ones KNeg3 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [3,3,3,3,3], "Failed for code = [1,1,1,1,1], k = -3")
    }

    // Test sequential array with n=100 and k=1
    // 测试顺序数组，n=100且k=1
    func testSequentialArrayK1() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = 1
        let result = s.decrypt(code, k)
        print("Test Sequential Array K1 Result: \(result)") // 打印结果
        let expected = Array(2...100) + [1]
        XCTAssertEqual(result, expected, "Failed for sequential code 1...100, k = 1")
    }

    // Test sequential array with n=100 and k=-1
    // 测试顺序数组，n=100且k=-1
    func testSequentialArrayKNeg1() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = -1
        let result = s.decrypt(code, k)
        print("Test Sequential Array KNeg1 Result: \(result)") // 打印结果
        let expected = [100] + Array(1...99)
        XCTAssertEqual(result, expected, "Failed for sequential code 1...100, k = -1")
    }

    // Test large n=100 with all ones and k=99
    // 测试大数组n=100全1且k=99
    func testLargeAllOnesK99() {
        let s = P1652_Solution1()
        let code = Array(repeating: 1, count: 100)
        let k = 99
        let result = s.decrypt(code, k)
        print("Test Large All Ones K99 Result: \(result)") // 打印结果
        let expected = Array(repeating: 99, count: 100)
        XCTAssertEqual(result, expected, "Failed for all ones n=100, k=99")
    }

    // Test large n=100 with all ones and k=-99
    // 测试大数组n=100全1且k=-99
    func testLargeAllOnesKNeg99() {
        let s = P1652_Solution1()
        let code = Array(repeating: 1, count: 100)
        let k = -99
        let result = s.decrypt(code, k)
        print("Test Large All Ones KNeg99 Result: \(result)") // 打印结果
        let expected = Array(repeating: 99, count: 100)
        XCTAssertEqual(result, expected, "Failed for all ones n=100, k=-99")
    }

    // Test large n=100 with sequential values and k=99
    // 测试大数组n=100顺序值且k=99
    func testLargeSequentialK99() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = 99
        let result = s.decrypt(code, k)
        print("Test Large Sequential K99 Result: \(result)") // 打印结果
        let total = code.reduce(0, +)
        let expected = code.map { total - $0 }
        XCTAssertEqual(result, expected, "Failed for sequential code 1...100, k=99")
    }

    // Test large n=100 with sequential values and k=-99
    // 测试大数组n=100顺序值且k=-99
    func testLargeSequentialKNeg99() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = -99
        let result = s.decrypt(code, k)
        print("Test Large Sequential KNeg99 Result: \(result)") // 打印结果
        let total = code.reduce(0, +)
        let expected = code.map { total - $0 }
        XCTAssertEqual(result, expected, "Failed for sequential code 1...100, k=-99")
    }

    // Test large n=100 with all values 100 and k=50
    // 测试大数组n=100全100且k=50
    func testLargeAll100K50() {
        let s = P1652_Solution1()
        let code = Array(repeating: 100, count: 100)
        let k = 50
        let result = s.decrypt(code, k)
        print("Test Large All100 K50 Result: \(result)") // 打印结果
        let expected = Array(repeating: 5000, count: 100)
        XCTAssertEqual(result, expected, "Failed for all 100 n=100, k=50")
    }

    // Test large n=100 with all values 100 and k=-50
    // 测试大数组n=100全100且k=-50
    func testLargeAll100KNeg50() {
        let s = P1652_Solution1()
        let code = Array(repeating: 100, count: 100)
        let k = -50
        let result = s.decrypt(code, k)
        print("Test Large All100 KNeg50 Result: \(result)") // 打印结果
        let expected = Array(repeating: 5000, count: 100)
        XCTAssertEqual(result, expected, "Failed for all 100 n=100, k=-50")
    }

    // Test k=0 with large n=100
    // 测试k=0且大数组n=100
    func testLargeK0() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = 0
        let result = s.decrypt(code, k)
        print("Test Large K0 Result: \(result)") // 打印结果
        let expected = Array(repeating: 0, count: 100)
        XCTAssertEqual(result, expected, "Failed for code 1...100, k=0")
    }

    // Test n=1 with k=0 (only possible k)
    // 测试n=1且k=0（唯一可能的k）
    func testN1K0() {
        let s = P1652_Solution1()
        let code = [42]
        let k = 0
        let result = s.decrypt(code, k)
        print("Test N1 K0 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [0], "Failed for code = [42], k=0")
    }

    // Test mixed values with k=2
    // 测试混合值且k=2
    func testMixedValuesK2() {
        let s = P1652_Solution1()
        let code = [3,1,4,1,5]
        let k = 2
        let result = s.decrypt(code, k)
        print("Test Mixed Values K2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [5,5,6,8,4], "Failed for code = [3,1,4,1,5], k=2")
    }

    // Test mixed values with k=-2
    // 测试混合值且k=-2
    func testMixedValuesKNeg2() {
        let s = P1652_Solution1()
        let code = [3,1,4,1,5]
        let k = -2
        let result = s.decrypt(code, k)
        print("Test Mixed Values KNeg2 Result: \(result)") // 打印结果
        XCTAssertEqual(result, [5,9,2,5,5], "Failed for code = [3,1,4,1,5], k=-2")
    }

    // Test performance with large n=100
    // 测试性能，大数组n=100
    func testPerformanceLargeN() {
        let s = P1652_Solution1()
        let code = Array(1...100)
        let k = 50
        self.measure {
            _ = s.decrypt(code, k)
        }
    }
}