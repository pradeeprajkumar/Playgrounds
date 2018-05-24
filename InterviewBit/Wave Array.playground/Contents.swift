//: Playground - noun: a place where people can play

import Foundation

func wave(_ A: inout [Int]) -> [Int] {
    var sortedArray = A.sorted()
    var index = 1
    while index < sortedArray.count {
        var temp = sortedArray[index-1]
        sortedArray[index-1] = sortedArray[index]
        sortedArray[index] = temp
        index += 2
    }
    return sortedArray
}

var A = [1, 2, 3, 4]
print(wave(&A))
