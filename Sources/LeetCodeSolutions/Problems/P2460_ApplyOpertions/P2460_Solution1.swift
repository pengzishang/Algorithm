public final class P2460_Solution1 {
    public init() {}
    public func applyOperations(_ nums: [Int]) -> [Int] {
        var copyNums = nums
        for indexF in 0..<copyNums.count - 1 {
            if copyNums[indexF + 1] == copyNums[indexF] {
                copyNums[indexF] = copyNums[indexF + 1] * 2
                copyNums[indexF + 1] = 0
            }
        }
        var indexS = 0
        
        for indexF in 0..<copyNums.count - 1 {
            if copyNums[indexF] == 0 {
                indexS = indexF + 1
                while indexS < copyNums.count, copyNums[indexS] == 0 {
                    indexS += 1
                }
                
                if indexS == copyNums.count {
                    break
                } else {
                    copyNums.swapAt(indexF, indexS)
                }
            }
        }
        return copyNums
    }
}
