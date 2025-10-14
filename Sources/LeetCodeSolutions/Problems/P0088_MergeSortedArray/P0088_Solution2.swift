public final class P0088_Solution2 {
    public init() {}
    public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var empty: [Int] = []
        var p1 = 0
        var p2 = 0
        while p1 + p2 < m + n {
            
            var fitem : Int {
                if p1 >= m {
                    return 1000
                } else {
                    return nums1[p1]
                }
            }
            
            var sitem : Int {
                if p2 >= n {
                    return 1000
                } else {
                    return nums2[p2]
                }
            }
            if fitem <= sitem {
                empty.append(fitem)
                print(fitem)
                if p1 < m {
                    p1 += 1
                }
            } else {
                empty.append(sitem)
                print(sitem)
                if p2 < n {
                    p2 += 1
                }
            }
        }
        
        nums1 = empty
    }
}
