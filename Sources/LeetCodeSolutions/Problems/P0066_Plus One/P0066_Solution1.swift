final class P0066_Solution1 {
    // 传统法
    func plusOne(_ digits: [Int]) -> [Int] {
        var copyDigits = digits
        var pointer = copyDigits.count - 1
        var isCarry = false
        while pointer >= 0 {
            var tempDigit = copyDigits[pointer] + (pointer == copyDigits.count - 1 ? 1 : 0) + (isCarry ? 1 : 0)
            isCarry = false
            if tempDigit > 9 {
                isCarry = true
                tempDigit %= 10
            }
            copyDigits[pointer] = tempDigit
            pointer -= 1
        }
        if isCarry {
            copyDigits.insert(1, at: 0)
        }
        return copyDigits
    }
}
