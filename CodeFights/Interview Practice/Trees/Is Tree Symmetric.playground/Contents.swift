import Foundation
class Tree: Decodable {
    var value: Int
    var left: Tree?
    var right: Tree?
}

let json = """
{
    "value": 1,
    "left": {
        "value": 2,
        "left": {
            "value": 3,
            "left": null,
            "right": null
        },
        "right": {
            "value": 4,
            "left": null,
            "right": null
        }
    },
    "right": {
        "value": 2,
        "left": {
            "value": 4,
            "left": null,
            "right": null
        },
        "right": {
            "value": 3,
            "left": null,
            "right": null
        }
    }
}
""".data(using: .utf8)!

let root = try? JSONDecoder().decode(Tree.self, from: json)

extension Array where Element == Tree? {
    func isArraySymmetric() -> Bool {
        var startIndex = 0, endIndex = self.count - 1
        while startIndex <= endIndex && endIndex >= 0 {
            let front = self[startIndex] as? Tree, rear = self[endIndex] as? Tree
            print(front?.value, rear?.value)
            if front?.value != rear?.value {
                return false
            }
            startIndex += 1
            endIndex -= 1
        }
        return true
    }
}


//======================================================
//Recursive solution:
func isTreeSymmetric(t: Tree?) -> Bool {
    return isMirrored(t1: t?.left, t2: t?.right)
}

func isMirrored(t1: Tree?, t2: Tree?) -> Bool {
    if t1 == nil || t2 == nil {
        return t1 == nil && t2 == nil
    }
    if t1?.value == t2?.value {
        return isMirrored(t1: t1?.left, t2: t2?.right) && isMirrored(t1: t1?.right, t2: t2?.left)
    }
    return false
}

//======================================================


//Iterative solution:
func isTreeSymmetric2(t: Tree?) -> Bool {
    if let curr = t {
        var parentQueue: [Tree?] = [curr]
        repeat {
            var childQueue: [Tree?] = []
            for node in parentQueue {
                if node?.left != nil || node?.right != nil {
                    childQueue.append(node?.left)
                    childQueue.append(node?.right)
                }
            }
            if childQueue.isArraySymmetric() {
                parentQueue = childQueue
            } else {
                return false
            }
            
        } while parentQueue.count > 0
    }
    return true
}

//print([1,2,3,4,5,6].isArraySymmetric())

print(isTreeSymmetric(t: root))
print(isTreeSymmetric2(t: root))
