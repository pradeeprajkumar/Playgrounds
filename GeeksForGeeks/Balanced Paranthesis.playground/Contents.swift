
func isBalancedParanthesis(paranthesis: String) -> Bool {
    var stack: [Character] = []
    let parathesisDictionary: [String:String] = [")": "(",
                                                 "}": "{",
                                                 "]": "["]
    for char in paranthesis {
        if parathesisDictionary.values.contains("\(char)") {//Open parathensis
            //Push
            stack.append(char)
        } else if parathesisDictionary.keys.contains("\(char)") {//Closed paranthesis
            if parathesisDictionary["\(char)"] == stack.peek() {
                //Pop
                stack.removeLast()
            } else {
                print("Stack character: \(stack.peek())\nIncoming character: \(char)")
                return false
            }
        } else {
            return false
        }
    }
    return stack.isEmpty
}

extension Array {
    func peek() -> String {
        if self.last != nil {
            return "\(self.last!)"
        } else {
            return ""
        }
    }
}


print(isBalancedParanthesis(paranthesis: "{(})"))
