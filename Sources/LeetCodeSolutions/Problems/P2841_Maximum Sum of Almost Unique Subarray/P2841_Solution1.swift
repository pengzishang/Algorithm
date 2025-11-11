final class P2841_Solution1 {
    func maxSum(_ nums: [Int], _ m: Int, _ k: Int) -> Int {
        var currArray = Array(nums.prefix(k))
        var currentSum: Int = currArray.reduce(0, +)
        var maxSum = isAlmostUnique(currArray, m: m) ? currentSum : 0

        for i in k ..< nums.count {
            currArray.removeFirst()
            currArray.append(nums[i])
            currentSum += nums[i]
            currentSum -= nums[i - k]
            if isAlmostUnique(currArray, m: m) {
                maxSum = max(maxSum, currentSum)
            }
        }
        // exceed the time limit
        func isAlmostUnique(_ subarray: [Int], m: Int) -> Bool {
            Set(subarray).count >= m
        }

        return maxSum
    }
}
