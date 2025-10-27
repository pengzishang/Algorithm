final class P0066_Solution2 {
    // find 9
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.last != 9 {
            var copyDigits = digits
            copyDigits[digits.count - 1] += 1
            return copyDigits
        }

        var copyDigits = digits
        var pointer = copyDigits.count - 2
        while pointer >= 0 {
            if copyDigits[pointer] == 9 {
                pointer -= 1
            } else {
                break
            }
        }

        if pointer == -1 {
            copyDigits = [1] + Array(repeating: 0, count: copyDigits.count)
        } else {
            for row in pointer ..< copyDigits.count {
                if row == pointer {
                    copyDigits[row] += 1
                } else {
                    copyDigits[row] = 0
                }
            }
        }
        return copyDigits
    }
}
