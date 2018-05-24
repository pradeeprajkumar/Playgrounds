//: Playground - noun: a place where people can play
//Question: https://codefights.com/arcade/intro/level-3/JKKuHJknZNj4YGL32

import Foundation

var s1 = "aabcc"
var s2 = "adcaa"

func commonCharacterCount(s1: String, s2: String) -> Int {
    var result = 0
    var dict1: [Character:Int] = [:]
    var dict2: [Character:Int] = [:]
    
    for charValue in s1 {
        dict1[charValue] = dict1[charValue] == nil ? 1 : dict1[charValue]! + 1
    }
    for charValue in s2 {
        dict2[charValue] = dict2[charValue] == nil ? 1 : dict2[charValue]! + 1
    }
    for key in dict1.keys {
        if let value1 = dict1[key] {
            if let value2 = dict2[key] {
                result += min(value1, value2)
            }
        }
    }
    return result
}

print(commonCharacterCount(s1: s1, s2: s2))
