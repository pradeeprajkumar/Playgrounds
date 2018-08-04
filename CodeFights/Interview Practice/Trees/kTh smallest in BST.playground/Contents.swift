import Foundation
class Tree: Decodable {
    var value: Int
    var left: Tree?
    var right: Tree?
}

var index = 0
var kThValue = 3

func countNodes(node: Tree?) {
    if node == nil {
        return
    }
    if node?.left == nil && node?.right == nil {
        if index < 1 {
            index = 1
        }
        return
    }
    //Left
    index += 1
    if index == kThValue {
        debugPrint("found:\(node?.left?.value)")
    }
    countNodes(node: node?.left)
    //Center
    index += 1
    if index == kThValue {
        debugPrint("found:\(node?.value)")
    }
    countNodes(node: node?.right)
    //Right
    index += 1
    if index == kThValue {
        debugPrint("found:\(node?.right?.value)")
    }
    return
}

//func traverseInorder(node: Tree?) -> Int? {
//    if node == nil {
//        return nil
//    }
//    if node?.left == nil {
//        if index < 1 {
//            index = 1
//        }
//    }
//    if index == kThValue {
//        return node?.value
//    }
//    traverseInorder(node: node?.left)
//    debugPrint(node!.value)
//    index += 1
//    traverseInorder(node: node?.right)
//    if index == kThValue {
//        return node?.value
//    }
//    index += 1
//}

let json = """
{
    "value": 3,
    "left": {
        "value": 1,
        "left": null,
        "right": null
    },
    "right": {
        "value": 5,
        "left": {
            "value": 4,
            "left": null,
            "right": null
        },
        "right": {
            "value": 6,
            "left": null,
            "right": null
        }
    }
}
""".data(using: .utf8)!

let root = try? JSONDecoder().decode(Tree.self, from: json)
countNodes(node: root)

//func kthSmallestInBST(t: Tree?, k: Int) -> Int {
//    kThValue = k
//    traverseInorder(node: root)
//    return 0
//}
//
//debugPrint(kthSmallestInBST(t: root, k: 4))
