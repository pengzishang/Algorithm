public final class P0027_Solution2 {
    // buck, too much space
    public init() {}
    public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var indexC = 0
        var count = 0
        var currRecord = nums[0]

        while indexC < nums.count {
            currRecord = nums[indexC]
            if currRecord == val {
                nums[indexC] = currRecord
                count += 1
            }
            indexC += 1
        }
        nums = nums.filter {
            $0 != -1
        }
        return count
    }
}
