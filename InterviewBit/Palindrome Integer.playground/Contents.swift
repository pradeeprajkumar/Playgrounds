//: Playground - noun: a place where people can play

import UIKit

func isPalindrome(_ A: inout Int) -> Int {
    if A < 2 {
        return 0
    }
    else {
        var number = A
        var reversedNumber = 0
        while number > 0 {
            reversedNumber = reversedNumber * 10 + number % 10
            number = number / 10
        }
        print(A, reversedNumber)
        if A - reversedNumber == 0 {
            return 1
        }
    }
   return 0
}

var A = 2147447412
print(isPalindrome(&A))
