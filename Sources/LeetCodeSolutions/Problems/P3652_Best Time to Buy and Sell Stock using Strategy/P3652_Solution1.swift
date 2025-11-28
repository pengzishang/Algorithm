final class P3652_Solution1 {
    func maxProfit(_ prices: [Int], _ strategy: [Int], _ k: Int) -> Int {
        // 先算前缀和
        // 前缀和对这种需要分段计算的, 还是比较好用

        let sums = zip(prices, strategy).map { pair in
            pair.0 * pair.1
        }

        var currentSum = 0
        // 这个是正常的前缀和
        var sumPrefixes = [Int]()
        for (i, sum) in sums.enumerated() {
            currentSum += sum
            sumPrefixes.append(currentSum)
        }

        // 这个是专门存“只卖”的前缀和, 因为strategy每个值都变成1, 所以算法不一样
        var sellSumPrefixes = [Int]()
        var currentSellSum = 0
        for price in prices {
            currentSellSum += price
            sellSumPrefixes.append(currentSellSum)
        }

        // 从第一个完整的k段开始
        // 切成4段
        // 0123456789, 比如i = 4, k = 4, count = 10
        // 那么是0-1234-56789这样分段

        // 因为存在不修改的情况. 无语. 这样直接得到不修改的值
        var maxSum = sumPrefixes[prices.count - 1]
        var currSum = maxSum
        for i in k - 1 ..< prices.count {
            // 最左边
            var part1 = 0
            if i >= k {
                part1 = sumPrefixes[i - k]
            }
            // 最右边
            let part2 = sumPrefixes[prices.count - 1] - sumPrefixes[i]

            // 然后计算 [1 2 3 4]这一段
            // 因为 1 2 全部要乘一个0的系数. 所以这一段其实是0
            // 所以只要计算 [3 4]
            // 这里要全部切换成sellSum, 等于把strategy所有的值变成1, 重新拿到的另一个sellsum前缀和
            let part3 = sellSumPrefixes[i] - sellSumPrefixes[i - k / 2]
            currSum = part1 + part2 + part3
            maxSum = max(maxSum, currSum)
        }
        return maxSum
    }
}
