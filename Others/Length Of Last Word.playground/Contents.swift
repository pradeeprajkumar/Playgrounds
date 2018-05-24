//: Playground - noun: a place where people can play

import Foundation

func lengthOfLastWord(_ A: String) -> Int {
    var arrayValue = A.components(separatedBy: " ")
    print(arrayValue)
    var index = arrayValue.count-1
    while index >= 0 {
        if isValidWord(word: arrayValue[index]) {
            return arrayValue[index].count
        }
        index -= 1
    }
    return 0
}

func isValidWord(word: String) -> Bool {
    return !word.isEmpty && word.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
}

var s = "Hello world is"
print(lengthOfLastWord(s))
