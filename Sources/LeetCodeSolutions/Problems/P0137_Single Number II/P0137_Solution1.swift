final class P0137_Solution1 {
    // Hash
    func singleNumber(_ nums: [Int]) -> Int {
        let firstValue = nums.reduce(into: [Int: Int]()) { partialResult, item in
            if let value = partialResult[item] {
                partialResult[item] = value + 1
            } else {
                partialResult[item] = 1
            }
        }.first {
            $0.value == 1
        }?.key
        return firstValue!
    }
}
