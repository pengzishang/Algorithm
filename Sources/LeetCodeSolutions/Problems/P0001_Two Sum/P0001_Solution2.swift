final class P0001_Solution2 {
    // 用hash比较
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let numSet = Set(nums)
        var firstIndex = -1
        var secondIndex = -1
        for index in 0 ..< nums.count {
            if numSet.contains(target - nums[index]) {
                secondIndex = nums.lastIndex(of: target - nums[index])!
                if secondIndex != index {
                    firstIndex = index
                    break
                }
            }
        }

        return [firstIndex, secondIndex]
    }
}
