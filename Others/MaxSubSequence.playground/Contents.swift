//: Playground - noun: a place where people can play

import UIKit

var negativeSequenceArray = [-8, -3, -10, -4, -2]
var mixedSequenceArray = [2,5,-8,3,9,-2,-4,0,2,6,-3,-5,0,-4,2,3,1]
var positiveSequenceArray = [1,2,3]
//var sequenceArray = [-9,-5,-8,-7]


//KADANE's Algorithm
//Works for positive numbers, mixed numbers
//Does not work for all negative numbers
func findMaxSumSubSequenceForMixedNumbers(sequenceArray: [Int]) -> Int? {
    var maxSum = sequenceArray.first
    var currSum = maxSum
    for index in 0..<sequenceArray.count {
        if index < 1 {
            continue
        }
        currSum! += sequenceArray[index]
        if currSum! > 0 {
            maxSum = max(currSum!, maxSum!)
        }
        else {
            currSum = sequenceArray[index]
        }
    }
    return maxSum
}

//This algorithm works for all type of data
func findMaxSumSubSequence(sequenceArray: [Int]) -> Int? {
    var maxSum = sequenceArray.first
    var currSum = maxSum
    for index in 0..<sequenceArray.count {
        if index < 1 {
            continue
        }
        currSum = max(sequenceArray[index], currSum!+sequenceArray[index])
        maxSum = max(currSum!, maxSum!)
    }
    return maxSum
}

if let max = findMaxSumSubSequenceForMixedNumbers(sequenceArray: mixedSequenceArray) {
    print(max)
}

if let max2 = findMaxSumSubSequence(sequenceArray: negativeSequenceArray) {
    print(max2)
}

