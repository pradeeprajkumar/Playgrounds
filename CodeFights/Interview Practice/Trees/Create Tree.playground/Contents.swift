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
        "left": null,
        "right": null
    },
    "right": {
        "value": 3,
        "left": null,
        "right": null
    }
}
""".data(using: .utf8)!

let root = try? JSONDecoder().decode(Tree.self, from: json)

print(root?.value ?? "nil", root?.left?.value ?? "nil", root?.right?.value ?? "nil")
