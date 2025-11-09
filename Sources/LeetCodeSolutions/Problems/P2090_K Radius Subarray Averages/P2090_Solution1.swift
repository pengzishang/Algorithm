final class P2090_Solution1 {
    func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
        if nums.count <= 2 * k {
            return Array(repeating: -1, count: nums.count)
        }
        var currSum = nums.prefix(k * 2 + 1).reduce(0, +)
        var result: [Int] = Array(repeating: -1, count: k)
        result.append(currSum / (2 * k + 1))
        for i in (k + 1) ..< (nums.count - k) {
            currSum -= nums[i - k - 1]
            currSum += nums[i + k]
            result.append(currSum / (2 * k + 1))
        }
        result.append(contentsOf: Array(repeating: -1, count: k))
        return result
    }
}
