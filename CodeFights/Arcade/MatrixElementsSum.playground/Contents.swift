//: Playground - noun: a place where people can play

import Foundation

func matrixElementsSum(matrix: [[Int]]) -> Int {
    var result = 0
    if let columnsCount = matrix.first?.count {
        for columnIndex in 0..<columnsCount {
            for rowIndex in 0..<matrix.count {
                var value = matrix[rowIndex][columnIndex]
                if value == 0 {
                    break
                }
                else {
                    result += value
                }
            }
        }
    }
    return result
}
print(matrixElementsSum(matrix: [[0, 1, 1, 2],
                                 [0, 5, 0, 0],
                                 [2, 0, 3, 3]]))
