final class P1512_Solution1 {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        nums
            .reduce(into: [Int: Int]()) {
                if let value = $0[$1] {
                    $0[$1] = value + 1
                } else {
                    $0[$1] = 1
                }
            }
            .reduce(into: Int()) {
                $0 += ($1.value * ($1.value - 1) / 2)
            }
    }
}
