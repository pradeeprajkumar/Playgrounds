//: Playground - noun: a place where people can play

import Foundation

func plusOne(_ A: inout [Int]) -> [Int] {
    trimZeros(&A)
    var index = A.count-1
    var overflow = 0
    while index > -1 {
        if index == A.count-1 {
            //Last digit,
            //Add one to i
            overflow = (A[index]+1)/10
            A[index] = (A[index]+1)%10
        }
        else {//Other indexes
            if overflow == 0 {
                break
            }
            let newValue = A[index]+overflow
            A[index] = (newValue)%10
            overflow = (newValue)/10
        }
        index -= 1
    }
    if overflow > 0 {
        A.insert(overflow, at: 0)
    }
    return A
}

func trimZeros(_ A: inout [Int]) {
    for index in 0..<A.count {
        if A.first == 0 {
            A.removeFirst()
        }
        else {//Break, if you find a first non zero item
            return
        }
    }
    //If array contains only 0s then we should have atleast one 0 to add one to it
    if A.count < 1 {
        A.append(0)
        return
    }
}

/*
 //This can't be used, as the int can't hold the digits in the infinite size array
func plusOne(_ A: inout [Int]) -> [Int] {
    var resultArray:[Int] = []
    var number = 0
    for value in A {
        number = number * 10 + value
    }
    number += 1
    
    while number > 0 {
        resultArray.insert(number%10, at: 0)
        number /= 10
    }
    
    return resultArray
}
*/

var A = [0,1,2,3,5]
var B = [ 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 , 9, 9]
var C = [ 1, 9, 9, 9, 9, 9, 9 ]
var D = [0,0]
var E = [ 0, 0, 4, 4, 6, 0, 9, 6, 5, 1 ]
var F = [ 9, 9, 9, 9, 9 ]
print(plusOne(&F))
