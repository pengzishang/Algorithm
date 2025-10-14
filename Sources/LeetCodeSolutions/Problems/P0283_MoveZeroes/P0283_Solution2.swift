public final class P0283_Solution2 {
    public init() {}
    
    public func moveZeroes(_ nums: inout [Int]) {
        if nums.count <= 1 {
            return
        }
        var firstZero = 0
        for fast in 0..<nums.count {
            if nums[fast] == 0 {
                firstZero += 1
            } else {
                nums.swapAt(fast, fast - firstZero)
            }
        }
    }
}
