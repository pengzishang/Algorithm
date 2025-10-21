public final class P2487_Solution2 {
    public init() {}
    // 单调栈
    public func removeNodes(_ head: ListNode?) -> ListNode? {
        // 要观察, 这是一个递减的关系
        // 所以是一开始会找到一个最大的, 然后次大的, 然后...
        var stack: [Int] = []
        let dummy = ListNode(-1, head)
        var curr = dummy.next
        while curr != nil {
            stack.append(curr!.val)
            curr = curr!.next
        }
        
        var newStack: [Int] = []
        for item in stack {
            // 关键, 如果一个数比他左边大, 则不断循环, 直到把左边清空
            while !newStack.isEmpty && newStack.last! < item {
                newStack.removeLast()
            }
            newStack.append(item)
        }

        let newDummy = ListNode(-1)
        var cPointer = newDummy
        for item in newStack {
            cPointer.next = ListNode(item)
            cPointer = cPointer.next!
        }

        return newDummy.next
    }
}
