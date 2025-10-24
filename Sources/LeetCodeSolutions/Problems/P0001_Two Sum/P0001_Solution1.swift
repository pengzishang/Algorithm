final class P0001_Solution1 {
    // 一次成功, 不可思议, 虽然很简单
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sPointer = 0
        var fPointer = 1
        var hasFind = false
        while sPointer < nums.count - 1, !hasFind {
            for item in sPointer + 1 ..< nums.count {
                if nums[sPointer] + nums[item] == target {
                    hasFind = true
                    fPointer = item
                    break
                }
            }
            if !hasFind {
                sPointer += 1
            }
        }
        return [sPointer, fPointer]
    }
}
