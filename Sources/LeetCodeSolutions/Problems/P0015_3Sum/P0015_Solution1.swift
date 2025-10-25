final class P0015_Solution1 {
    // 元素过多的时候肯定不行
    func threeSum(_ nums: [Int]) -> [[Int]] {
        // force
        var result: [[Int]] = []
        for i in 0 ..< nums.count {
            for j in i + 1 ..< nums.count {
                for k in j + 1 ..< nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                        result.append([nums[i], nums[j], nums[k]].sorted())
                    }
                }
            }
        }
        result = Array(Set(result))
        return result
    }
}
