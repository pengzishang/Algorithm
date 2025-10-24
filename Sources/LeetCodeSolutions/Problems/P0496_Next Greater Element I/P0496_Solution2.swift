public final class P0496_Solution2 {
    public init() {}
//    nums2 = [1,3,4,2]
    public func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var stack = [Int]()
        var nextGreater = [Int: Int]()
        for item in nums2 {
            // 数组的左边是底部, 对应first, 右边是顶部对应last
            while let top = stack.last, top < item {
                // 右边有大的
                stack.removeLast()
                nextGreater[top] = item
            }
            stack.append(item)
        }
        // 这是右边没有大的
        print(stack)
        for item in stack {
            nextGreater[item] = -1
        }
        var returnArr = [Int]()
        for item in nums1 {
            returnArr.append(nextGreater[item]!)
        }
        return returnArr
    }
}
