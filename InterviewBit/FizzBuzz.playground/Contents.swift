//: Playground - noun: a place where people can play

import UIKit

func fizzBuzz(_ A: inout Int) -> [String] {
    var resultArray: [String] = []
    for value in 1...A {
        if value % 5 == 0 {
            if value % 3 == 0 {
                resultArray.append("FizzBuzz")
            }
            else {
                resultArray.append("Buzz")
            }
        }
        else if value % 3 == 0 {
            resultArray.append("Fizz")
        }
        else {
            resultArray.append("\(value)")
        }
    }
    return resultArray
}

var A = 1100
print(fizzBuzz(&A))
