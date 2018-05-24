//: Playground - noun: a place where people can play

import Foundation

func coverPoints(_ A: inout [Int], _ B: inout [Int]) -> Int {
    var numberOfMovements = 0
    for index in 0...A.count-1 {
        if index > 0 {
            numberOfMovements += max(abs(A[index-1]-A[index]), abs(B[index-1]-B[index]))
        }
    }
    return numberOfMovements
}

//var A = [-7, -13]
//var B = [1, -5]

var A = [ 4, 8, -7, -5, -13, 9, -7, 8 ]
var B = [ 4, -15, -10, -3, -13, 12, 8, -8 ]
print(coverPoints(&A, &B))
