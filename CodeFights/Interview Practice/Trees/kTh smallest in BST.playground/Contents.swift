import Foundation
class Tree: Decodable {
    var value: Int
    var left: Tree?
    var right: Tree?
}


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

//In order traversal
func getKthNode(_ node: Tree?, k: Int, index: inout Int, value: inout Int?) {
    if node == nil || index >= k {
        return
    }
    //Left
    getKthNode(node?.left, k: k, index: &index, value: &value)
    index += 1
    if index == k {
        value = node?.value
    }
    //Right
    getKthNode(node?.right, k: k, index: &index, value: &value)
}

func kthSmallestInBST(t: Tree?, k: Int) -> Int {
    var index = 0
    var value: Int?
    getKthNode(t, k: k, index: &index, value: &value)
    return value ?? 0
}


debugPrint(kthSmallestInBST(t: root, k: 4))
