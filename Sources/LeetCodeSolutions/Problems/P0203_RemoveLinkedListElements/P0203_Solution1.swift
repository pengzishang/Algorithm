public final class P0203_Solution1 {
    public init() {}
    // 迭代
    public func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let newHead = ListNode(-val, head)
        var curr: ListNode? = head
        var last = newHead
        while curr != nil {
            if curr?.val == val {
                last.next = curr?.next
                curr = curr?.next
            } else {
                last = curr!
                curr = curr?.next
            }
        }
        return newHead.next
    }
}
