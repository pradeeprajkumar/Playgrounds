
//Add prefix 0 node's to have same number of nodes in both the lists
//https://www.youtube.com/watch?v=HzWKOp0C_aU
//Time complexity: O(2m+n) ˜= O(n)

// Definition for singly-linked list:
public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
}

func createNode<T>(inputArray: [T]) -> ListNode<T>? {
    var head: ListNode<T>?, curr: ListNode<T>?
    for value in inputArray {
        if head == nil {
            head = ListNode<T>(value)
            curr = head
        } else {
            curr?.next = ListNode<T>(value)
            curr = curr?.next
        }
    }
    return head
}

func printList<T>(head: ListNode<T>?) {
    var curr = head
    while curr != nil {
        print(curr!.value)
        curr = curr?.next
    }
}

func lengthOfList<T>(head: ListNode<T>?) -> Int {
    var count = 0
    var curr = head
    while curr != nil {
        count += 1
        curr = curr?.next
    }
    return count
}

func prefix(list: ListNode<Int>?, times: Int, value: Int = 0) -> ListNode<Int>? {
    var head: ListNode<Int>?, curr: ListNode<Int>?
    var count = times
    while count > 0 {
        if head == nil {
            head = ListNode<Int>(value)
            curr = head
        } else {
            curr?.next = ListNode<Int>(value)
            curr = curr?.next
        }
        count -= 1
    }
    curr?.next = list
    return head
}

func addTwoHugeNumbers(a: ListNode<Int>?, b: ListNode<Int>?) -> ListNode<Int>? {
    let leftCount = lengthOfList(head: a)
    let rightCount = lengthOfList(head: b)
    var left = a, right = b
    if leftCount > rightCount {
        right = prefix(list: b, times: leftCount - rightCount)
    } else if rightCount > leftCount {
        left = prefix(list: a, times: rightCount - leftCount)
    }

    let resultTuple = recursivelyAddTwoNumbers(left, right)
    if resultTuple.carryForward > 0 {
        let newHead = ListNode<Int>(resultTuple.carryForward)
        newHead.next = resultTuple.sumNode
        return newHead
    } else {
        return resultTuple.sumNode
    }
}

func recursivelyAddTwoNumbers(_ left: ListNode<Int>?, _ right: ListNode<Int>?) -> (sumNode: ListNode<Int>?, carryForward: Int) {
    if left?.next == nil && right?.next == nil {
        return (ListNode<Int>((left!.value + right!.value) % 10000), (left!.value + right!.value) / 10000)
    }
    let resultTuple = recursivelyAddTwoNumbers(left?.next ?? left, right?.next ?? right)
    let sum = (left!.value + right!.value + resultTuple.carryForward)
    let currNode = ListNode<Int>(sum % 10000)
    currNode.next = resultTuple.sumNode
    
    return (currNode, sum / 10000)
}

var left = createNode(inputArray: [1, 2, 3, 4])
var right = createNode(inputArray: [2])

let sumList = addTwoHugeNumbers(a: left, b: right)
printList(head: sumList)
