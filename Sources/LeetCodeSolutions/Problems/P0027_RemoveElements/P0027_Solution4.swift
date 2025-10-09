public final class P0027_Solution4 {

    public init() {}
    public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var s = 0
        for f in 0..<nums.count {
            if nums[f] != val {
                nums[s] = nums[f]
                s += 1
            }
        }
        return s
    }
}
