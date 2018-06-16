
func isBalancedParanthesis(paranthesis: String) -> Bool {
    var stack: [Character] = []
    for char in paranthesis {
        if isOpenParanthesis(char: char) {
            //Push
            stack.append(char)
        } else if isClosedParanthesis(char: char) {
            if (char == ")" && stack.peek() == "(") || (char == "}" && stack.peek() == "{") || (char == "]" && stack.peek() == "[") {
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

func isOpenParanthesis(char: Character) -> Bool {
    return "({[".contains(char)
}

func isClosedParanthesis(char: Character) -> Bool {
    return ")}]".contains(char)
}

print(isBalancedParanthesis(paranthesis: "({[]}{]}[()])"))
