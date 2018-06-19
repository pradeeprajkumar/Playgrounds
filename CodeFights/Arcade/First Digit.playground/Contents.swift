//Swift 4 code
extension Character {
    func isDigit() -> Bool {
        if self.unicodeScalars.first!.value > 47 && self.unicodeScalars.first!.value < 58 {
            return true
        }
        return false
    }
}

func firstDigit(inputString: String) -> Character {
    var resultChar: Character!
    for char in inputString {
        if char.isDigit() {
            resultChar = char
            break
        }
    }
    return resultChar
}

print(firstDigit(inputString: "var_01289__Int"))

//Swift 3 code(accepted by portal)
/*
extension String {
    func isDigit() -> Bool {
        if self.unicodeScalars.first!.value > 47 && self.unicodeScalars.first!.value < 58 {
            return true
        }
        return false
    }
}

func firstDigit(inputString: String) -> Character {
    var resultChar: Character!
    for char in inputString.characters {
        if "\(char)".isDigit() {
            resultChar = char
            break
        }
    }
    return resultChar
}
*/
