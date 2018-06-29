//Time complexity: O(m+n), which is O(n)

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
    func printNodes() {
        print(self.value)
        self.next?.printNodes()
    }
}


func createList(inputArray: [Int]) -> ListNode<Int>? {
    var head: ListNode<Int>? = ListNode(0), curr = head
    for value in inputArray {
        curr?.next = ListNode<Int>(value)
        curr = curr?.next
    }
    return head?.next
}

func mergeTwoLinkedLists(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int>? {
    //Adding a dummy node in the beginning to avoid nil check for first node, so returning next of head in the last statement
    var head: ListNode<Int>? = ListNode(0), curr = head
    var left = l1, right = l2
    while left != nil && right != nil {
        var smaller: ListNode<Int>?
        if left!.value < right!.value {
            smaller = left
            left = left?.next
        } else {
            smaller = right
            right = right?.next
        }
        curr?.next = smaller
        curr = curr?.next
    }
    if left != nil {
        curr?.next = left
    } else if right != nil {
        curr?.next = right
    }
    return head?.next
}

let left = createList(inputArray: [1, 1, 2, 5])
let right = createList(inputArray: [])
var resultList = mergeTwoLinkedLists(l1: left, l2: right)
resultList?.printNodes()
