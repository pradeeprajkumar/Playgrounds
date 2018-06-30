// Definition for singly-linked list:
public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
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

extension ListNode {
    func printList() {
        print(self.value)
        self.next?.printList()
    }
}

func reverseNodesInKGroups(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
    var prevNode: ListNode<Int>?, head: ListNode<Int>?
    var restNode = l
    while restNode != nil {
        var startNode = restNode
        //Local method that reverses the nodes of given size
        func reverseKNodes(curr: ListNode<Int>?, k: Int) -> (lastNode: ListNode<Int>?, validCount: Bool) {
            if curr == nil {
                //Not enough nodes
                restNode = nil
                return (nil, false)
            }
            if k-1 == 0 {
                restNode = curr?.next
                curr?.next = nil
                startNode = curr
                return (curr, true)
            } else {
                let resultTuple = reverseKNodes(curr: curr?.next, k: k-1)
                if resultTuple.validCount {
                    resultTuple.lastNode?.next = curr
                    curr?.next = nil
                    return (curr, resultTuple.validCount)
                }
                return (nil, false)
            }
        }
        let lastNode = reverseKNodes(curr: restNode, k: k).lastNode
        if head == nil { //One time execution for final return node
            head = startNode
        }
        if prevNode != nil {
            prevNode?.next = startNode
        }
        prevNode = lastNode
    }
    return head
}

var list = createList(inputArray: [30, 20, 10, 60, 50, 40, 70, 80])
let reversed = reverseNodesInKGroups(l: list, k: 3)
reversed?.printList()
