//: Playground - noun: a place where people can play

import Foundation

func longerTime() {
    print("Longer time")
    let startTime = Date.timeIntervalSinceReferenceDate
    for _ in 0..<Int16.max {
    }
    let endTime = Date.timeIntervalSinceReferenceDate - startTime
    print("Longer Time taken: \(endTime) seconds")
}

func lesserTime() {
    print("Less time")
    let startTime = Date.timeIntervalSinceReferenceDate
    for _ in 0..<100 {
    }
    let endTime = Date.timeIntervalSinceReferenceDate - startTime
    print("Less Time taken: \(endTime) seconds")
}

lesserTime()
longerTime()
