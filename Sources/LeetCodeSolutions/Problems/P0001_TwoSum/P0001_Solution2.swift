public final class P0001_Solution2 {
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count where nums[i] + nums[j] == target {
                return [i, j]
            }
        }
        return []
    }
}
