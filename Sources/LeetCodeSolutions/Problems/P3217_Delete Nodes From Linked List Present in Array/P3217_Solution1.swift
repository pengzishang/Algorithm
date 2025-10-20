public final class P3217_Solution1 {
    public init() {}
    public func modifiedList(_ nums: [Int], _ head: ListNode?) -> ListNode? {
        let dummyNode = ListNode(-1, head)
        let numSet = Set(nums)
        var sPointer: ListNode? = dummyNode
        var fPointer = dummyNode.next
        while fPointer != nil {
            if !numSet.contains((fPointer?.val)!) {
                sPointer = fPointer
                fPointer = fPointer?.next
            } else {
                sPointer?.next = fPointer?.next
                fPointer = sPointer?.next
            }
        }
        return dummyNode.next
    }
}
