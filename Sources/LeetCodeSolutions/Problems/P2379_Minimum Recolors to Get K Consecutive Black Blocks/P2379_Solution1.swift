final class P2379_Solution1 {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var currSum = blocks.prefix(k).count(where: { $0 == "W" })
        let copyBlocks = Array(blocks)
        var minCount = currSum
        if blocks.count <= k {
            return minCount
        }
        for i in 1 ... blocks.count - k {
            currSum += (copyBlocks[i + k - 1] == "W" ? 1 : 0)
            currSum -= (copyBlocks[i - 1] == "W" ? 1 : 0)
            minCount = min(minCount, currSum)
            if currSum == 0 {
                break
            }
        }
        return minCount
    }
}
