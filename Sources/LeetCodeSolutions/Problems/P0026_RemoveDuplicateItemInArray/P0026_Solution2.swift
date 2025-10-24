public final class P0026_Solution2 {
    // double pointer
    public init() {}
    public func removeDuplicates(_ nums: inout [Int]) -> Int {
        var indexC = 0
        var indexP = 0

        var prevRecord: Int? {
            didSet {
                if oldValue != prevRecord, let prevRecord {
                    nums[indexP] = prevRecord
                    indexP += 1
                }
            }
        }
        while indexC < nums.count {
            prevRecord = nums[indexC]
            indexC += 1
        }
        return indexP
    }
}
