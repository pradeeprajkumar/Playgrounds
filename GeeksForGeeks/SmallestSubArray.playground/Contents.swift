//: Playground - noun: a place where people can play

//Question: Given an array of integers and a number x, find the smallest subarray with sum greater than the given value.
//Link: https://www.geeksforgeeks.org/minimum-length-subarray-sum-greater-given-value/
import Foundation

var array1 = [1, 4, 45, 6, 0, 19]
var array2 = [1, 10, 5, 2, 7]
var array3 = [1, 11, 100, 1, 0, 200, 3, 2, 1, 250]
var array4 = [1, 2, 4]

func smallestArrayCountBruteForce(inputArray: [Int]) -> Int {
    var result = 0
    for index1 in 0..<inputArray.count {
        for index2 in index1..<inputArray.count {
            print(index1, index2)
        }
    }
    return result
}


print(smallestArrayCountBruteForce(inputArray: array1))
