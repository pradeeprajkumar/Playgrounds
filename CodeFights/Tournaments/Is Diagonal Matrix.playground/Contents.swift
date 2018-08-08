func isDiagonalMatrix(matrix: [[Int]]) -> Bool {
    var columnIndex = 0
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[i].count {
            if columnIndex != j && matrix[i][j] != 0 {
                //It should be zero
                return false
            }
        }
        columnIndex += 1
    }
    return true
}

debugPrint(isDiagonalMatrix(matrix: [[1,0,0,0],
                                     [0,5,0,0],
                                     [0,0,0,0],
                                     [0,0,0,1000]]))
