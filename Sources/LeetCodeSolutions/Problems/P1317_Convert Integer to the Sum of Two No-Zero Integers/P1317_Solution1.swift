final class P1317_Solution1 {
    func getNoZeroIntegers(_ n: Int) -> [Int] {
        var a = 1
        while n - a >= a {
            if "\(a)\(n - a)".contains(where: { $0 == "0" }) {
                a += 1
            } else {
                break
            }
        }
        return [a, n - a]
    }
}
