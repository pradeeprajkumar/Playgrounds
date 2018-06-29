class ListNode<T> {
    var value: T
    var next: ListNode<T>?
    init(_ x: T) {
         self.value = x
         self.next = nil
     }
 }

func createList<T>(_ inputArray: [T]) -> ListNode<T>? {
    var head: ListNode<T>?, curr: ListNode<T>?
    for value in inputArray {
        if curr == nil {
            head = ListNode(value)
            curr = head
        } else {
            curr!.next = ListNode(value)
            curr = curr?.next
        }
    }
    return head
}

func printList<T>(_ listHead: ListNode<T>?) {
    var head: ListNode? = listHead
    while head != nil {
        print(head!.value)
        head = head!.next
    }
}

var head = createList([1, 2, 3, 2, 1])
//printList(head)

//==========================================================================================================================================
//==========================================================================================================================================


func middleNode<T>(head: ListNode<T>?) -> ListNode<T>? {
    var slow = head, fast = head
    while fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    return slow
}

//print("Middle node: \(middleNode(head: head)?.value)")

func isListPalindrome(l: ListNode<Int>?) -> Bool {
    var left = l
    return checkPalindrome(left: &left, right: l)
}

//Recursively traverses till the right end and checks each value with left pointer's value
func checkPalindrome<T: Equatable>(left: inout ListNode<T>?, right: ListNode<T>?) -> Bool {

    if right == nil {
        return true
    }

    if checkPalindrome(left: &left, right: right?.next) == true {
        if left?.value == right?.value {
            left = left?.next
            return true
        }
    }
    return false
}


print(isListPalindrome(l: head))
