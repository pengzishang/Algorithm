public final class P0088_Solution1 {
    public init() {}
    public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        if i < 0 {
            nums1 = nums2
            return
        }
        var j = n - 1
        if j < 0 {
            return
        }
        var empty: [Int] = nums1
        var index = i + j + 1

        while index > 0 || i >= 0 || j >= 0 {
            if i < 0 {
                empty[index] = nums2[j]
                j -= 1
            } else if j < 0 {
                empty[index] = nums1[i]
                i -= 1
            } else {
                let item1 = nums1[i]
                let item2 = nums2[j]
                if item1 >= item2 {
                    empty[index] = item1
                    i -= 1
                } else {
                    empty[index] = item2
                    j -= 1
                }
            }
            index -= 1
        }
        nums1 = empty
    }
}
