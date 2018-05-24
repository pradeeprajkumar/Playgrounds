//: Playground - noun: a place where people can play

import UIKit

func findDuplicate(_ A: inout [Int]) -> Int {
    var dictionary: [Int:Bool] = [:]
    for index in 0..<A.count {
        if dictionary[A[index]] != nil {
            return A[index]
        } else {
            dictionary[A[index]] = true
        }
    }
    return -1
}
var A = [1, 3, 3, 1, 4]
print(findDuplicate(&A))



