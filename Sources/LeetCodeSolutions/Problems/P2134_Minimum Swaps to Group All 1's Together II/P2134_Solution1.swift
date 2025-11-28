final class P2134_Solution1 {
    func minSwaps(_ nums: [Int]) -> Int {
        // 处理环形数组,方法就是可以拼一截去后面, 可以拼窗口k - 1 个元素后去, 也可以拼完整的一个数组去后面, 从算法方面, 复杂度相同
        // 窗口为1的个数, 理解
        let k = nums.count(where: { $0 == 1 })
        if k == 0 {
            return 0
        }
        let continuousNums = nums + nums.prefix(k - 1)
        var currCount = 0
        var maxCount = currCount
        for index in 0 ..< continuousNums.count {
            if continuousNums[index] == 1 {
                currCount += 1
            }

            if index >= k {
                if continuousNums[index - k] == 1 {
                    currCount -= 1
                }
            }

            maxCount = max(maxCount, currCount)
        }
        return k - maxCount
    }
}
