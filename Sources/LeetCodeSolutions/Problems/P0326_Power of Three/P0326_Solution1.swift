final class P0326_Solution1 {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        let max = 1_162_261_467
        return max % n == 0
    }
}
