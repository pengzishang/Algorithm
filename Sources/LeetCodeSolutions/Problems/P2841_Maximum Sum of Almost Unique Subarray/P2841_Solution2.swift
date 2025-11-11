final class P2841_Solution2 {
    func maxSum(_ nums: [Int], _ m: Int, _ k: Int) -> Int {
        let currArray = Array(nums.prefix(k))
        var currInfo: [Int: Int] = currArray.reduce(into: [Int: Int]()) { partialResult, item in
            if let value = partialResult[item] {
                partialResult[item] = value + 1
            } else {
                partialResult[item] = 1
            }
        }

        var currentSum: Int = currArray.reduce(0, +)
        var maxSum = isAlmostUnique(currInfo, m: m) ? currentSum : 0

        for i in k ..< nums.count {
            if let value = currInfo[nums[i]] {
                currInfo[nums[i]] = value + 1
            } else {
                currInfo[nums[i]] = 1
            }

            if let value = currInfo[nums[i - k]] {
                if value > 1 {
                    currInfo[nums[i - k]] = value - 1
                } else {
                    currInfo.removeValue(forKey: nums[i - k])
                }
            }

            currentSum += nums[i]
            currentSum -= nums[i - k]
            if isAlmostUnique(currInfo, m: m) {
                maxSum = max(maxSum, currentSum)
            }
        }
        // exceed the time limit
        func isAlmostUnique(_ currInfo: [Int: Int], m: Int) -> Bool {
            currInfo.count >= m
        }

        return maxSum
    }
}
