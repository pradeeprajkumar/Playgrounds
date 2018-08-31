func extractMatrixColumn(matrix: [[Int]], column: Int) -> [Int] {
    var resultArray: [Int] = []
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[i].count {
            if j == column {
                resultArray.append(matrix[i][j])
            }
        }
    }
    return resultArray
}

print(extractMatrixColumn(matrix: [[1, 1, 1, 2],
                                   [0, 5, 0, 4],
                                   [2, 1, 3, 6]], column: 2))
