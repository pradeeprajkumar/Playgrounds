//A node in Linked List
class Node<T: Numeric> {
    var value: T?
    var next: Node?

    init(value: T, next: Node?) {
        self.value = value
        self.next = next
    }
}

extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        //TODO: Do the memory comparison
        /*
        withUnsafePointer(to: &lhs.next) {
            print($0)
        }
         */
        return lhs.value == rhs.value
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "value: \(value) next -> \(next != nil)"
    }
}

//Linked list implementation
struct LinkedList {
    var head: Node<Int>?
    init(_ inputArray: [Int]) {
        head = createWith(inputArray)
    }
}
extension LinkedList {
    //Create a linked list from an array and return the head node
    func createWith(_ inputArray: [Int]) -> Node<Int>? {
        return inputArray.count > 0 ? Node<Int>(value: inputArray.first!, next: createWith(Array(inputArray[1...]))) : nil
    }
    
    func lastNode() -> Node<Int>? {
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    func middleNode() -> Node<Int>? {
        var slowNode = head
        var fastNode = head?.next
        while fastNode?.next?.next != nil {
            fastNode = fastNode?.next?.next
            slowNode = slowNode?.next
        }
        return slowNode
    }
    

    //Solution 1: Tortoise Hare solution
    //Time complexity: O(n)
    //Space complexity: O(1)
    func isLooping() -> Bool {
        var slowNode = head
        var fastNode = head?.next
        while fastNode != nil {
            if slowNode == fastNode {
                return true
            }
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
        }
        return false
    }

    //Solution 2: Store the node address in a dictionary, and iterate the list, if the current node's address already found in the dictionary, loop is found, else if we reach the end, there is no loop then
    //Time complexity: O(n)
    //Space complexity: O(n)


    //Solution 3: Mark the node's value while traversing(with: -1), so that we are sure, that its visited, next time, we see a -1 already, it means we found a loop
    //Time complexity: O(n)
    //Space complexity: O(1)
    //Disadvantage: Data is modified in the linked list
}

//Linked List creation
let list = LinkedList([1, 2, 3, 4, 5, 6, 7, 8])
if let head = list.head {
    print(head)
}

print("Is looping: \(list.isLooping())")

var lastNode = list.lastNode()
print(lastNode!)
lastNode?.next = list.middleNode()
print(lastNode!.next!)

print("Is looping: \(list.isLooping())")

