//: Playground - noun: a place where people can play

import Foundation

func makeArrayConsecutive2(statues: [Int]) -> Int {
    var result = 0
    let sortedArray = statues.sorted()
    for index in 1..<sortedArray.count {
        result += sortedArray[index]-sortedArray[index-1]-1
    }
    return result
}

print(makeArrayConsecutive2(statues: [6, 2, 3, 8]))
