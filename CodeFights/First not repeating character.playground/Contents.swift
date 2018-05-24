//: Playground - noun: a place where people can play

var str = "HeHllo, playground"
func firstNotRepeatingCharacter(s: String) -> Character {
    var charDictionary:[Character:Int] = [:]
    var charArray = Array(s.characters)

    //1st iteration to get the character count
    for value in charArray {
        if let count = charDictionary[value] {
            charDictionary[value] = count + 1
        } else {
            charDictionary[value] = 1
        }
    }
    
    //2nd iteration to find the first non repeating character
    for value in charArray {
        if charDictionary[value] == 1 {
            return value
        }
    }

    return "_"
}

print(firstNotRepeatingCharacter(s: str))
