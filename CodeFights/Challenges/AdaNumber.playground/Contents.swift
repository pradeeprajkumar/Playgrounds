//: Playground - noun: a place where people can play

import Foundation
import UIKit
/*
func adaNumber(line: String) -> Bool {
    var result = false
    let pattern = "[0-9]+(?:_[0-9]+)*"
    
    let underScoreValidator = NSPredicate(format: "", argumentArray: nil)
    
    return result
}

print(adaNumber(line: "123"))
print(adaNumber(line: "123_789"))
print(adaNumber(line: "123_7_89"))
print(adaNumber(line: "__123_7_89"))
*/

extension String {
    var validateAsUnderscore : Bool {
        let numberRegEx = "^[0-9]+(_[0-9]+)*$"
        print(self)
        return self.range(of: numberRegEx, options: .regularExpression) != nil
    }
    var validateHashTag : Bool {
        let numberRegEx = "^[2-16]{1}(_[0-9]+)*$"
        print(self)
        return self.range(of: numberRegEx, options: .regularExpression) != nil
    }
    //(^([2-9]|(1[0-6]))(#(([0-9]+[a-z]*)|([0-9]+(_[0-9]+)*))#))|(^[0-9]+(_[0-9]+)*)$
}

print("123".validateAsUnderscore)
print("1_23".validateAsUnderscore)
print("123_4567_89_312_575".validateAsUnderscore)
print("_123".validateAsUnderscore)
print("123_".validateAsUnderscore)
print("_".validateAsUnderscore)
print("1".validateAsUnderscore)
print("12__12".validateAsUnderscore)
