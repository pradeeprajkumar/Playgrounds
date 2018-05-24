//: Playground - noun: a place where people can play

import Foundation
/*
func allLongestStrings(inputArray: [String]) -> [String] {
    var countArray: [Int] = []
    var resultArray: [String] = []
    var maxCount = 0
    countArray = inputArray.map {
        maxCount = $0.characters.count > maxCount ? $0.characters.count : maxCount
        return $0.characters.count
    }
    
    return inputArray.filter({ $0.characters.count == maxCount })
}
 */

func allLongestStrings(inputArray: [String]) -> [String] {
    var countArray: [Int] = []
    var resultArray: [String] = []
    var maxCount = 0
    countArray = inputArray.map {
        maxCount = $0.characters.count > maxCount ? $0.characters.count : maxCount
        return $0.characters.count
    }
    for index in 0..<inputArray.count {
        if countArray[index] == maxCount {
         resultArray.append(inputArray[index])
        }
    }
    return resultArray
}

print(allLongestStrings(inputArray: ["aba", "aa", "ad", "vcd", "aba"]))
