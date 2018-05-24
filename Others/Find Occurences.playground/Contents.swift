//: Playground - noun: a place where people can play

import UIKit

var str = "a+b+cd+e++"

func findIndices(charArray: [Character]) -> [Int] {
    var indicesArray:[Int] = []
    for index in 0...charArray.count-1 {
        if charArray[index] == "+" {
            indicesArray.append(index)
        }
    }
    return indicesArray
}

print(findIndices(charArray: Array(str)))

/*
 * Time Complexity: 2n
 * 1: Converting string into Array(Using default Array converter)
 * 2: Iterating the character array and finding the indices
 * Space Complexity: n(worst case)
 * If n elements are '+', then n items will be created for space
 */
