//: Playground - noun: a place where people can play

import Foundation

func divide(a: Int, b: Int?) -> Int {
//    guard b != 0 else {
//        return 0
//    }
    print("Line before precondition")
    precondition(b != nil, "Divide by nil not possible")
    print("Line after precondition")
    return a/b!
}

print(divide(a: 4, b: nil))
