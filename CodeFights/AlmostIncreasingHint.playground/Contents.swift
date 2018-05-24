//: Playground - noun: a place where people can play

import UIKit

//
//  AlmostIncreasing2.swift
//
//
//  Created by Pradeep Rajkumar on 23/05/18.
//

import Foundation
func almostIncreasingSequence(sequence: [Int]) -> Bool {
    var oneRemoved = false
    var previous = 0
    for index in 1..<sequence.count {
        print(previous, index)
        if sequence[index] <= sequence[previous] {
            if oneRemoved {
                return false
            } else {
                oneRemoved = true
                if index > 1 && sequence[index] <= sequence[index-2] {
                    previous = index - 1
                } else {
                    previous = index
                }
            }
        } else {
            previous = index
        }
    }
    return true
}
print(almostIncreasingSequence(sequence: [5,15,30,12,40,5,60]))
