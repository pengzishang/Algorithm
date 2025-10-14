public final class P0283_Solution3 {
    public init() {}
    
    public func moveZeroes(_ nums: inout [Int]) {
        if nums.count <= 1 {
            return
        }
        var i = 0
        var totalCount = 0
        while i < nums.count, totalCount <= nums.count {
            if nums[i] == 0 {
                nums.remove(at: i)
                nums.append(0)
                totalCount += 1
            } else {
                i += 1
            }
        }
    }
}
