final class P0643_Solution1 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currSum = nums.prefix(k).reduce(into: Int()) { $0 += $1 }
        var maxAvg = Double(currSum) / Double(k)
        if nums.count > k {
            for i in 1 ... nums.count - k {
                currSum -= nums[i - 1]
                currSum += nums[i + k - 1]
                maxAvg = max(maxAvg, Double(currSum) / Double(k))
            }
        }
        return maxAvg
    }
}
