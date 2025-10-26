import Foundation

final class P0043_Solution1 {
    // 采用低位累加, 一位一位的乘, 然后累加, 核心是绝对不能超出Int的处理范围
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        let digits1 = num1.map { Int(String($0)) }.compactMap(\.self) // 123
        let digits2 = num2.map { Int(String($0)) }.compactMap(\.self) // 45687
        // 先处理低位比较符合自觉
        var intermediateResults = [[Int]]()
        for digit2 in digits2 {
            var productRow = [Int]()
            for digit1 in digits1 {
                productRow.append(digit1 * digit2)
            }
            productRow = productRow.reversed()

            for index in 0 ..< productRow.count - 1 {
                let remainder = productRow[index] % 10
                let carry = productRow[index] / 10
                productRow[index] = remainder
                productRow[index + 1] = productRow[index + 1] + carry
            }
            intermediateResults.append(productRow)
        }

        for index in 0 ..< intermediateResults.count {
            intermediateResults[intermediateResults.count - index - 1]
                .insert(contentsOf: Array(repeating: 0, count: index),
                        at: 0)
        }

        let maxLength = intermediateResults.map(\.count).max()

        var finalResult = [Int]()

        var carry = 0
        for position in 0 ... maxLength! {
            if position == maxLength {
                if carry != 0 {
                    finalResult.append(carry)
                }
            } else {
                var digitSum = 0
                for row in intermediateResults {
                    let value = if row.count > position { row[position] } else { 0 }
                    digitSum += value
                }
                digitSum += carry
                carry = digitSum / 10
                digitSum = digitSum % 10
                finalResult.append(digitSum)
            }
        }

        let resultString = finalResult.map { String($0) }.reversed().flatMap(\.self)

        return String(resultString)
    }
}
