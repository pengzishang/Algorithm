public final class P2487_Solution1 {
    public init() {}
    // O(n2) 可能超过时间限制
    public func removeNodes(_ head: ListNode?) -> ListNode? {
        let dummyNode = ListNode(Int.max, head)
        var sPointer = dummyNode

        while sPointer.next != nil {
            let sstart = sPointer.next?.val
            var fPointer = sPointer.next?.next
            while fPointer != nil {
                if fPointer?.val ?? 0 <= sstart ?? 0 {
                    fPointer = fPointer?.next
                } else {
                    sPointer.next = sPointer.next?.next
                    break
                }
            }
            if fPointer == nil {
                sPointer = sPointer.next!
            }
        }
        return dummyNode.next
    }
}
