//: Playground - noun: a place where people can play

import UIKit

func isPrime(number: Int) -> Bool {

    if number < 2 {
        return false
    }
    
    for value in 2..<number {
        if number%value == 0 {
            return false
        }
    }
    return true
}

func primesum(_ A: inout Int) -> [Int] {

    var resultArray: [Int] = []
    var value = A
    while value > 1 {
        if isPrime(number: value) == true {
            if isPrime(number: A-value) {
                resultArray.append(A-value)
                resultArray.append(value)
                return resultArray
            }
        }
        value -= 1
    }
    return resultArray
}

//var A = 10
var A = 1048574
print(primesum(&A))
