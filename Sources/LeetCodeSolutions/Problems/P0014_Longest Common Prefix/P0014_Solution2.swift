public final class P0014_Solution2 {
    public init() {}
    // 二分法不好, 因为是前缀
    public func longestCommonPrefix(_ strs: [String]) -> String {
        var commonPart = strs.first!
        for index in 1 ..< strs.count {
            commonPart = commonPrefix(str1: commonPart, str2: strs[index])
            if commonPart.isEmpty {
                break
            }
        }
        return commonPart
    }

    func commonPrefix(str1: String, str2: String) -> String {
        let rStr1 = Array(str1)
        let rStr2 = Array(str2)
        let maxLength = min(str1.count, str2.count)
        var commonLength = 0
        for item in 0 ..< maxLength {
            if rStr1[item] == rStr2[item] {
                commonLength += 1
            } else {
                break
            }
        }
        return String(str1.prefix(commonLength))
    }
}
