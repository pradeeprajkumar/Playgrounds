import Foundation
class Tree: Decodable {
    var value: Int
    var left: Tree?
    var right: Tree?
}

let tree1json = """
{
    "value": 5,
    "left": {
        "value": 10,
        "left": {
            "value": 4,
            "left": {
                "value": 1,
                "left": null,
                "right": null
            },
            "right": {
                "value": 2,
                "left": null,
                "right": null
            }
        },
        "right": {
            "value": 6,
            "left": {
                "value": -1,
                "left": null,
                "right": null
            },
            "right": null
        }
    },
    "right": {
        "value": 7,
        "left": null,
        "right": null
    }
}
""".data(using: .utf8)!

let tree2json = """
{
    "value": 10,
    "left": {
        "value": 4,
        "left": {
            "value": 1,
            "left": null,
            "right": null
        },
        "right": {
            "value": 2,
            "left": null,
            "right": null
        }
    },
    "right": {
        "value": 6,
        "left": null,
        "right": {
            "value": -1,
            "left": null,
            "right": null
        }
    }
}
""".data(using: .utf8)!

let tree1 = try? JSONDecoder().decode(Tree.self, from: tree1json)
let tree2 = try? JSONDecoder().decode(Tree.self, from: tree2json)


//Problem solution
func isSameTree(root1: Tree?, root2: Tree?) -> Bool {
    if root1 == nil && root2 == nil {
        return true
    } else if root1 == nil || root2 == nil {
        return false
    }
    //Root check && Left check && Right check
    return root1?.value == root2?.value && isSameTree(root1: root1?.left, root2: root2?.left) && isSameTree(root1: root1?.right, root2: root2?.right)
}

func isSubtree(t1: Tree?, t2: Tree?) -> Bool {
    if t1 == nil && t2 != nil {
        return false
    }
    else if t2 == nil {
        return true
    } else if isSameTree(root1: t1, root2: t2) {
        return true
    }
    return isSubtree(t1: t1?.left, t2: t2) || isSubtree(t1: t1?.right, t2: t2)
}

print(isSubtree(t1: tree1, t2: tree2))
