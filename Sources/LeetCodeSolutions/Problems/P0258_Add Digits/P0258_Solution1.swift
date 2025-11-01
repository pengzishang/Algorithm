final class P0258_Solution1 {
    func addDigits(_ num: Int) -> Int {
        if num < 10 {
            return num
        }
        let row = firstRound(num: num)
        func firstRound(num: Int) -> Int {
            if num == 0 {
                return 0
            }
            return num % 10 + firstRound(num: num / 10)
        }
        return addDigits(row)
    }
}
