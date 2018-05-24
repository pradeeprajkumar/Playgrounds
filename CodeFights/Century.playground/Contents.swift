//: Playground - noun: a place where people can play

import UIKit

func centuryFromYear(year: Int) -> Int {
    return (year%100 > 0) ? (year/100)+1:year/100
}

print(centuryFromYear(year: 1905))
