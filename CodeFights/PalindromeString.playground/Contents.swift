//: Playground - noun: a place where people can play

import UIKit

var str = "az"

func checkPalindrome(inputString: String) -> Bool {
    var charsArray = Array(inputString.characters)
    for index in 0..<charsArray.count {
        print(index, charsArray[index], (charsArray.count)/2)
        if index >= (charsArray.count)/2 {
            return true
        } else {
            if charsArray[index] != charsArray[charsArray.count-1-index] {
                return false
            }
        }
    }
    return false
}

print(checkPalindrome(inputString: str))
