public final class P2996_Solution1 {
    public init() {}
    public func missingInteger(_ nums: [Int]) -> Int {
        // 这是一个错误的解法, 题目强行要求从第一个开始算顺序, 不是找出中间连续的最大的一段, 这个解法是找最大的一段, 是错的, 是因为我花了太长时间了, 所以没删除
        if nums.count == 1 {
            return nums.first! + 1
        }
        // length,startIndex, 记录中间碰到的最大一段
        var chainInfo = [Int: Int]()
        // 记录当前段的起点
        var startIndex = 0
        // 应该是记录前值
        var prevLongestValue = nums.first!
        // 当前能达到的最长长度
        var currLongestLength = 1
        // 最大的长度
        var maxLength = 1
        var longStartPoint = 0
        chainInfo[startIndex] = currLongestLength
        for index in 1 ..< nums.count {
            let value = nums[index]
            if value == prevLongestValue + 1 {
                currLongestLength += 1
            } else {
                currLongestLength = 1
                startIndex = index
            }
            // 记录最长
            if maxLength < currLongestLength {
                maxLength = currLongestLength
                longStartPoint = startIndex
            }
            prevLongestValue = value
            chainInfo[startIndex] = currLongestLength
        }

        // 算那一段的和
        var sum = 0
        for item in 0 ..< maxLength {
            sum += nums[longStartPoint] + item
        }
        var maxResult = sum
        let setNum = Set(nums)
        // 如果找到就顺延
        while setNum.contains(maxResult) {
            maxResult += 1
        }
        return maxResult
    }
}
