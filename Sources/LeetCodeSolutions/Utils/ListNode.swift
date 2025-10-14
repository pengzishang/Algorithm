public class ListNode<T> {
    public var val: T
    public var next: ListNode<T>?
    public init(_ val: T) {
        self.val = val
        self.next = nil
    }
    public init(_ val: T, _ next: ListNode<T>?) {
        self.val = val
        self.next = next
    }
}

public extension Array {
    func toLinkedList() -> ListNode<Element>? {
        guard !isEmpty else { return nil }
        let dummy = ListNode(self[0])
        var current = dummy
        for val in self.dropFirst() {
            current.next = ListNode(val)
            current = current.next!
        }
        return dummy
    }
}

public extension ListNode where T: CustomStringConvertible {
    func printList() {
        var node: ListNode? = self
        var result: [String] = []
        while let current = node {
            result.append(String(describing: current.val))
            node = current.next
        }
        print(result.joined(separator: " -> ") + " -> nil")
    }
}
