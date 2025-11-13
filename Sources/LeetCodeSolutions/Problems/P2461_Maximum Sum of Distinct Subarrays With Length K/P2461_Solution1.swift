final class P2461_Solution1 {
    func maximumSubarraySum(_ nums: [Int], _ k: Int) -> Int {
        var currentArray: [Int] = Array(nums.prefix(k))
        var currSum = currentArray.reduce(0, +)
        var infos: [Int: Int] = currentArray.reduce(into: [Int: Int]()) { partialResult, item in
            partialResult[item] = (partialResult[item] ?? 0) + 1
        }
        var maxSum = 0
        if isSubArray(currentArray) {
            maxSum = currSum
        }

        for i in k ..< nums.count {
            if nums[i] == nums[i - k] {
                continue
            }
            currSum += nums[i]
            currSum -= nums[i - k]

            currentArray += [nums[i]]
            currentArray.removeFirst()

            infos[nums[i]] = (infos[nums[i]] ?? 0) + 1

            if let value = infos[nums[i - k]] {
                if value > 1 {
                    infos[nums[i - k]] = value - 1
                } else {
                    infos.removeValue(forKey: nums[i - k])
                }
            }

            if isSubArray(currentArray) {
                maxSum = max(maxSum, currSum)
            }
        }

        func isSubArray(_ array: [Int]) -> Bool {
            infos.count == array.count
        }

        return maxSum
    }
}
