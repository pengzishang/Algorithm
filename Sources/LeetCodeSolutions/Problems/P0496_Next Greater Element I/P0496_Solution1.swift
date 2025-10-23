public final class P0496_Solution1 {
    public init() {}
    public func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var rArray = [Int]()
        for item1 in nums1 {
            let index = nums2.firstIndex(of: item1)!
            let existValue = nums2[index..<nums2.count].first(where: { $0 > item1 })

            if let existValue {
                rArray.append(existValue)
            } else {
                rArray.append(-1)
            }
        }
        return rArray
    }
}
