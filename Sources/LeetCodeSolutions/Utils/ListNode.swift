public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

public extension [Int] {
    func toLinkedList() -> ListNode? {
        guard !isEmpty else { return nil }
        let dummy = ListNode(self[0])
        var current = dummy
        for val in dropFirst() {
            current.next = ListNode(val)
            current = current.next!
        }
        return dummy
    }
}

public extension ListNode {
    func printList() {
        var node: ListNode? = self
        var result: [String] = []
        while let current = node {
            result.append(String(describing: current.val))
            node = current.next
        }
        print(result.joined(separator: " -> ") + " -> nil")
    }

    func printList() -> [Int] {
        var node: ListNode? = self
        var result: [Int] = []
        while let current = node {
            result.append(current.val)
            node = current.next
        }
        return result
    }

    func toArray() -> [Int] {
        var node: ListNode? = self
        var result: [Int] = []
        while let current = node {
            result.append(current.val)
            node = current.next
        }
        return result
    }
}
