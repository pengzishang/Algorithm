import Foundation

final class P0043_Solution1 {
    // 采用低位累加, 一位一位的乘, 然后累加, 核心是绝对不能超出Int的处理范围
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        let arr1 = num1.map { Int(String($0)) }.compactMap(\.self) // 123
        let arr2 = num2.map { Int(String($0)) }.compactMap(\.self) // 45687
        // 先处理低位比较符合自觉
        var totalResult = [[Int]]()
        for item2 in arr2 {
            var tempRoundResult = [Int]()
            for item1 in arr1 {
                tempRoundResult.append(item1 * item2)
            }
            tempRoundResult = tempRoundResult.reversed()

            for count in 0 ..< tempRoundResult.count - 1 {
                let residue = tempRoundResult[count] % 10
                let carry = tempRoundResult[count] / 10
                tempRoundResult[count] = residue
                tempRoundResult[count + 1] = tempRoundResult[count + 1] + carry
            }
            totalResult.append(tempRoundResult)
        }

        for item in 0 ..< totalResult.count {
            totalResult[totalResult.count - item - 1].insert(contentsOf: Array(repeating: 0, count: item), at: 0)
        }

        let maxLength = totalResult.map(\.count).max()

        var finalResult = [Int]()

        var carry = 0
        for round in 0 ... maxLength! {
            if round == maxLength {
                if carry != 0 {
                    finalResult.append(carry)
                }
            } else {
                var tempSum = 0
                for item in totalResult {
                    let value = if item.count > round { item[round] } else { 0 }
                    tempSum += value
                }
                tempSum += carry
                carry = tempSum / 10
                tempSum = tempSum % 10
                finalResult.append(tempSum)
            }
        }

        let s = finalResult.map { String($0) }.reversed().flatMap(\.self)

        return String(s)
    }
}
