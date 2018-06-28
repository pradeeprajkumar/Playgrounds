// Definition for singly-linked list:
public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
}

func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
    var head: ListNode<Int>?, prev: ListNode<Int>?, curr = l
    while curr != nil {
        print(curr!.value)
        if curr?.value == k {
            var temp = curr
            prev?.next = curr?.next //Change the Link to skip this node
            curr = curr?.next
            temp?.next = nil //Set this node's next to nil to disconnect it
        } else {
            if head == nil { head = curr }
            prev = curr
            curr = curr?.next
        }
    }
    return head
}
