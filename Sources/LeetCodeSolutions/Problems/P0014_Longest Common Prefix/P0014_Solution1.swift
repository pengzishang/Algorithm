public final class P0014_Solution1 {
    public init() {}
    public func longestCommonPrefix(_ strs: [String]) -> String {
        let maxReachableLength = strs.max(by: { $0.count > $1.count })?.count ?? 0
        if maxReachableLength == 0 {
            return ""
        }
        var maxLength = 0
        for item in 1 ... maxReachableLength {
            if strs.allSatisfy({ $0.hasPrefix(strs[0].prefix(item)) }) {
                maxLength = item
            } else {
                break
            }
        }
        return String(strs[0].prefix(maxLength))
    }
}
