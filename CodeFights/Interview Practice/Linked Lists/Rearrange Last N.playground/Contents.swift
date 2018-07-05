// Definition for singly-linked list:
public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
}

extension ListNode {
    func printList() {
        var head: ListNode<T>? = self
        while head != nil {
            print(head!.value)
            head = head?.next
        }
    }
}

func createList<T: Numeric>(inputArray: [T]) -> ListNode<T>? {
    let head: ListNode<T>? = ListNode(0)
    var curr = head
    for value in inputArray {
        curr?.next = ListNode(value)
        curr = curr?.next
    }
    return head?.next
}

var head = createList(inputArray: [1,2,3,4])
//head?.printList()

func rearrangeLastN(l: ListNode<Int>?, n: Int) -> ListNode<Int>? {

    guard l != nil, n > 0 else {
        return l
    }

    var curr = l, lastNode = l
    var newHead: ListNode<Int>?
    var count = n
    while count >= 0 { //Get the window size
        if lastNode == nil && count >= 0 {
            //Count more than number of nodes
            return l
        } else if count == 0 {
            break
        }
        lastNode = lastNode?.next
        count -= 1
    }
    while lastNode?.next != nil { //Step one at a time
        curr = curr?.next
        lastNode = lastNode?.next
    }
    newHead = curr?.next
    curr?.next = nil
    lastNode?.next = l
    return newHead
}

let resultList = rearrangeLastN(l: head, n: 3)
resultList?.printList()
