
func minesweeper(matrix: [[Bool]]) -> [[Int]] {
    var resultMatrix: [[Int]] = []
    
    for row in matrix {
        resultMatrix.append(Array(repeating: 0, count: row.count))
    }
    
    var rowIndex = 0, columnIndex = 0
    
    while rowIndex < matrix.count {
        while columnIndex < matrix[rowIndex].count {
            if matrix[rowIndex][columnIndex] == true {
                //Prev row
                if rowIndex > 0 {
                    if columnIndex > 0 {
                        resultMatrix[rowIndex-1][columnIndex-1] = resultMatrix[rowIndex-1][columnIndex-1] + 1
                    }
                    resultMatrix[rowIndex-1][columnIndex] = resultMatrix[rowIndex-1][columnIndex] + 1
                    if columnIndex+1 < matrix[rowIndex].count {
                        resultMatrix[rowIndex-1][columnIndex+1] = resultMatrix[rowIndex-1][columnIndex+1] + 1
                    }
                }
                
                //Current row
                if columnIndex > 0 {
                    resultMatrix[rowIndex][columnIndex-1] = resultMatrix[rowIndex][columnIndex-1] + 1
                }
                if columnIndex+1 < matrix[rowIndex].count {
                    resultMatrix[rowIndex][columnIndex+1] = resultMatrix[rowIndex][columnIndex+1] + 1
                }
                
                //Next row
                if rowIndex+1 < matrix.count {
                    if columnIndex > 0 {
                        resultMatrix[rowIndex+1][columnIndex-1] = resultMatrix[rowIndex+1][columnIndex-1] + 1
                    }
                    resultMatrix[rowIndex+1][columnIndex] = resultMatrix[rowIndex+1][columnIndex] + 1
                    if columnIndex+1 < matrix[rowIndex].count {
                        resultMatrix[rowIndex+1][columnIndex+1] = resultMatrix[rowIndex+1][columnIndex+1] + 1
                    }
                }
            }
            columnIndex += 1
        }
        columnIndex = 0
        rowIndex += 1
    }    
    return resultMatrix
}

print(minesweeper(matrix: [[true, false, false],
                           [false, true, false],
                           [false, false, false]]))
