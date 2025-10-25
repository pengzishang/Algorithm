final class P0003_Solution1 {
    // 性能没法过, 如果长度过长
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var copyS = s
        var info = Set<Character>()
        var maxNum = 0
        var count = 0
        while count < s.count {
            for copy in copyS {
                if info.contains(copy) {
                    info.removeAll()
                }
                info.insert(copy)
                maxNum = max(maxNum, info.count)
            }
            copyS.removeFirst()
            info.removeAll()
            count += 1
        }

        return maxNum
    }
}
