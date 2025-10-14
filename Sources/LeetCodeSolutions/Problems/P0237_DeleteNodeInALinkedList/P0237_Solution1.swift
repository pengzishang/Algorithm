public final class P0237_Solution1 {
    public init() {}
    public func deleteNode(_ node: ListNode<Int>?) {
        // copy me to the next one
        node?.val = (node?.next?.val)!
        node?.next = node?.next?.next
    }
}
