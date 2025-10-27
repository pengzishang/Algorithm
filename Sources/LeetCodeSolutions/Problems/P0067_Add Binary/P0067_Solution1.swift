final class P0067_Solution1 {
    func addBinary(_ a: String, _ b: String) -> String {
        var digitsA = a.map { Int(String($0)) }.compactMap(\.self)
        var digitsB = b.map { Int(String($0)) }.compactMap(\.self)
        let maxLength = max(a.count, b.count)
        if digitsA.count > digitsB.count {
            digitsB.insert(contentsOf: Array(repeating: 0, count: maxLength - digitsB.count), at: 0)
        } else {
            digitsA.insert(contentsOf: Array(repeating: 0, count: maxLength - digitsA.count), at: 0)
        }
        var isCarry = false
        var result = ""
        for row in 0 ..< maxLength {
            var temp = digitsA[maxLength - row - 1] + digitsB[maxLength - row - 1] + (isCarry ? 1 : 0)
            isCarry = temp >= 2
            temp %= 2
            result = "\(temp)" + result
        }
        if isCarry {
            result = "1" + result
        }
        return result
    }
}
