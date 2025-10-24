public final class P0001_Solution1 {
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (i, x) in nums.enumerated() {
            if let j = map[target - x] { return [j, i] }
            map[x] = i
        }
        return []
    }
}
