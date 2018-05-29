//: Playground - noun: a place where people can play

import UIKit

func guardCheck() {
    guard 5<8 else {
        print("Comparison failed")
        return
    }
    print("Comparison passed")
    
    let value: Int?
    value = 10
    let value2: Int?
    value2 = 15
    
    guard let index = value, let index2 = value2 else {
        print("Guard let failed")
        return
    }
    print("Guard let passed")
}

guardCheck()
