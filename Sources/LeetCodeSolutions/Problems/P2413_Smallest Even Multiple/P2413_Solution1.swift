final class P2413_Solution1 {
    func smallestEvenMultiple(_ n: Int) -> Int {
        if n.isMultiple(of: 2) {
            n
        } else {
            2 * n
        }
    }
}
