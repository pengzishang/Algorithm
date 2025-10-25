/// Definition for singly-linked list.
/// public class ListNode {
///     public var val: Int
///     public var next: ListNode?
///     public init() { self.val = 0; self.next = nil; }
///     public init(_ val: Int) { self.val = val; self.next = nil; }
///     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
/// }
final class P0002_Solution1 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummyL1 = ListNode(-1, l1)
        let dummyL2 = ListNode(-1, l2)
        var currL1: ListNode? = dummyL1
        var currL2: ListNode? = dummyL2
        var stack1 = [Int]()
        var stack2 = [Int]()
        while currL1?.next != nil {
            currL1 = currL1?.next
            stack1.append((currL1?.val)!)
        }
        while currL2?.next != nil {
            currL2 = currL2?.next
            stack2.append((currL2?.val)!)
        }

        let cycleCount = max(stack1.count, stack2.count)
        var resultList = [Int]()
        var needCarry = false
        var n = 0

        func adding(x: Int, y: Int) {
            var temp = x + y
            if needCarry {
                temp += 1
                needCarry = false
            }
            if temp > 9 {
                temp = temp % 10
                needCarry = true
            }
            resultList.append(temp)
        }

        while n <= cycleCount {
            switch (stack1.count > n, stack2.count > n) {
            case (true, true):
                adding(x: stack1[n], y: stack2[n])
            case (true, false):
                adding(x: stack1[n], y: 0)
            case (false, true):
                adding(x: 0, y: stack2[n])
            case (false, false):
                if needCarry {
                    adding(x: 0, y: 0)
                }
            }
            n += 1
        }

        let finalNode = ListNode(-1)
        var curr: ListNode? = finalNode
        for item in resultList {
            curr?.next = ListNode(item)
            curr = curr?.next
        }
        return finalNode.next
    }
}
