public final class P0026_Solution3 {
    public init() {}
    public func removeDuplicates(_ nums: inout [Int]) -> Int {
        var indexC = 0
        var indexP = 0
        
        var prevRecord: Int?
        var currRecord = nums[0]
        while indexC < nums.count {
            currRecord = nums[indexC]
            indexC += 1
            if currRecord != prevRecord {
                nums[indexP] = currRecord
                prevRecord = currRecord
                indexP += 1
            }
        }
        return indexP
    }
}
