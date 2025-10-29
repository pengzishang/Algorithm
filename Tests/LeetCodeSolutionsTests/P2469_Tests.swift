import XCTest
@testable import LeetCodeSolutions

final class P2469_Solution1_Tests: XCTestCase {
    let solution = P2469_Solution1()
    
    // Test case 1: Normal case with decimal temperature
    // 测试用例1：带小数的正常温度
    func testTemperatureConversion_NormalCase1() {
        let celsius = 36.50
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [309.65000, 97.70000]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5, 
                      "Kelvin conversion failed for input: \(celsius)")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for input: \(celsius)")
    }
    
    // Test case 2: Normal case with different decimal temperature
    // 测试用例2：不同小数的正常温度
    func testTemperatureConversion_NormalCase2() {
        let celsius = 122.11
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [395.26000, 251.79800]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for input: \(celsius)")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for input: \(celsius)")
    }
    
    // Test case 3: Zero temperature
    // 测试用例3：零度
    func testTemperatureConversion_ZeroCase() {
        let celsius = 0.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [273.15, 32.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for zero temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for zero temperature")
    }
    
    // Test case 4: Integer temperature
    // 测试用例4：整数温度
    func testTemperatureConversion_IntegerCase() {
        let celsius = 100.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [373.15, 212.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for integer temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for integer temperature")
    }
    
    // Test case 5: Negative temperature
    // 测试用例5：负温度
    func testTemperatureConversion_NegativeCase() {
        let celsius = -40.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [233.15, -40.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for negative temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for negative temperature")
    }
    
    // Test case 6: Small decimal temperature
    // 测试用例6：小数值温度
    func testTemperatureConversion_SmallDecimalCase() {
        let celsius = 0.01
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [273.16, 32.018]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for small decimal temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for small decimal temperature")
    }
    
    // Test case 7: Upper boundary case
    // 测试用例7：上边界情况
    func testTemperatureConversion_UpperBoundaryCase() {
        let celsius = 1000.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [1273.15, 1832.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for upper boundary temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for upper boundary temperature")
    }
    
    // Test case 8: Large decimal temperature
    // 测试用例8：大数值温度
    func testTemperatureConversion_LargeDecimalCase() {
        let celsius = 999.99
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [1273.14, 1831.982]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for large decimal temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for large decimal temperature")
    }
    
    // Test case 9: Room temperature
    // 测试用例9：室温
    func testTemperatureConversion_RoomTemperatureCase() {
        let celsius = 25.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [298.15, 77.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for room temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for room temperature")
    }
    
    // Test case 10: Body temperature
    // 测试用例10：体温
    func testTemperatureConversion_BodyTemperatureCase() {
        let celsius = 37.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [310.15, 98.60]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for body temperature")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for body temperature")
    }
    
    // Test case 11: Freezing point of water
    // 测试用例11：水的冰点
    func testTemperatureConversion_FreezingPointCase() {
        let celsius = 0.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [273.15, 32.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for freezing point")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for freezing point")
    }
    
    // Test case 12: Boiling point of water
    // 测试用例12：水的沸点
    func testTemperatureConversion_BoilingPointCase() {
        let celsius = 100.0
        let result = solution.convertTemperature(celsius)
        print("Input: \(celsius), Output: \(result)")
        
        let expected = [373.15, 212.00]
        XCTAssertEqual(result[0], expected[0], accuracy: 1e-5,
                      "Kelvin conversion failed for boiling point")
        XCTAssertEqual(result[1], expected[1], accuracy: 1e-5,
                      "Fahrenheit conversion failed for boiling point")
    }
    
    // Test case 13: Performance test with maximum value
    // 测试用例13：最大值的性能测试
    func testTemperatureConversion_PerformanceCase() {
        let celsius = 1000.0
        
        measure {
            let result = solution.convertTemperature(celsius)
            let expected = [1273.15, 1832.00]
            XCTAssertEqual(result[0], expected[0], accuracy: 1e-5)
            XCTAssertEqual(result[1], expected[1], accuracy: 1e-5)
        }
    }
}