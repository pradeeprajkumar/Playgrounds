// Definition for binary tree:
public class Tree<T> {
    public var value: T
    public var left: Tree<T>? = nil
    public var right: Tree<T>? = nil
    public init(x: T, l: T? = nil, r: T? = nil) {
        self.value = x
        if let left = l {
            self.left = Tree(x: left)
        }
        if let right = r {
            self.right = Tree(x: right)
        }
    }
}
extension Tree {
    //Pre order traversal
    class func printTree(_ curr: Tree?) {
        if curr == nil {
            return
        }
        print(curr!.value)
        printTree(curr?.left)
        printTree(curr?.right)
    }
}

var root = Tree(x: 4, l: 1, r: 3)

//1
root.left?.left = Tree(x: -2, r: 3)

//3
root.right?.left = Tree(x: 1)
root.right?.right = Tree(x: 2, l: -2, r: -3)

Tree.printTree(root)

func hasPathWithGivenSum(t: Tree<Int>?, s: Int) -> Bool {
    if t == nil {
        return false
    }
    if t?.left == nil && t?.right == nil {
        return s-t!.value == 0
    }
    return hasPathWithGivenSum(t: t!.left, s: s-t!.value) || hasPathWithGivenSum(t: t!.right, s: s-t!.value)
}

print(hasPathWithGivenSum(t: root, s: 8))
