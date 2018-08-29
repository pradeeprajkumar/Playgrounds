func isIdentityMatrix(matrix: [[Int]]) -> Bool {
    var diagonal = 0
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[i].count {
            if j == diagonal {
                if matrix[i][j] != 1 {
                    return false
                }
            } else if matrix[i][j] != 0 {
                return false
            }
        }
        diagonal += 1
    }
    return true
}

print(isIdentityMatrix(matrix: [[1, 0, 0],
                                [0, 1, 0],
                                [0, 0, 1]]))
