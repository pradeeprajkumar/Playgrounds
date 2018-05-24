//: Playground - noun: a place where people can play

import Foundation

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    // your code
    var resultArray: [String] = a1+a2
    return resultArray.sorted()
}

print(inArray(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]))
