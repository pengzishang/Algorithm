public final class P0283_Solution1 {
    public init() {}

    public func moveZeroes(_ nums: inout [Int]) {
        if nums.count <= 1 {
            return
        }
        var s = 0
        while s < nums.count {
            if nums[s] == 0 {
                for f in s ..< nums.count {
                    if nums[f] != 0 {
                        nums.swapAt(s, f)
                        s += 1
                        break
                    } else if f == nums.count - 1, nums[f] == 0 {
                        s += 1
                        break
                    }
                }
            } else {
                s += 1
            }
        }
    }
}
