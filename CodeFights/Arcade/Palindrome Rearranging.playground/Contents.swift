import Foundation

func palindromeRearranging(inputString: String) -> Bool {
    var dictionary: [Character:Int] = [:]
    var oneOddValueFound = false

    for char in inputString.characters {
        if dictionary[char] == nil {
            dictionary[char] = 1
        } else {
            dictionary[char] = dictionary[char]! + 1
        }
    }

    for value in dictionary.values {
        if value % 2 != 0 {
            if oneOddValueFound == true {
                return false
            } else {
                oneOddValueFound = true
            }
        }
    }
    return true
}

print(palindromeRearranging(inputString: "aabbcd"))
