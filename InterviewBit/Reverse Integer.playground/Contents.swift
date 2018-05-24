//: Playground - noun: a place where people can play

import Foundation

func reverse(_ A: inout Int) -> Int {
    var reversedNumber:Int32 = 0
    var number = abs(A)
    while number > 0 {
        print(reversedNumber)
        if reversedNumber.multipliedReportingOverflow(by: 10).overflow == false {
            reversedNumber = reversedNumber * 10 + Int32(number % 10)
            number = number / 10
        }
        else {
            return 0
        }
    }
    return Int(A < 0 ? -reversedNumber : reversedNumber)
}
//var A = 99999999999999999093
//var A = -12345
//var A = -11464672859999
//var A = -1234567891
//var A = -1146467285
var A = -1146467285
//var A = -1234567891
print(reverse(&A))

/*
var b:Int16 = 0
var c = 99999999999999
do {
    if b.addingReportingOverflow(99999999999).overflow == true {
        print("Overflow")
    }
    else {
        print(b.addingReportingOverflow(99999999999).partialValue)
        print("No overflow")
    }
}catch {
    print("Overflow")
}

*/
