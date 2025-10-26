final class P0003_Solution2 {
    // 这个叫做滑动窗口
    // 前一个指针的移动速度, 与fPointer位置字符有关, 移动一个prevSubString中, 第一个与fPointer重复字符的位置
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var currLength = 0
        var maxLength = 0
        var sPointer = 0
        for fPointer in 0 ..< s.count {
            let startIndex = s.index(s.startIndex, offsetBy: sPointer)
            let prevEndIndex = s.index(s.startIndex, offsetBy: fPointer)
            let prevSubString = s[startIndex ..< prevEndIndex]
            let ch = s[prevEndIndex]
            if let index = prevSubString.firstIndex(of: ch) {
                let idxInPrev = prevSubString.distance(from: prevSubString.startIndex,
                                                       to: index)
                sPointer += idxInPrev + 1
                currLength -= idxInPrev
            } else {
                currLength += 1
            }
            maxLength = max(maxLength, currLength)
        }
        return maxLength
    }
}
