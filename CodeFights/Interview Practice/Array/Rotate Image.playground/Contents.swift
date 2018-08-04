func rotateImage(a: [[Int]]) -> [[Int]] {
    var resultArray: [[Int]] = []
    for j in 0 ..< a.count {
        var row: [Int] = []
        for i in stride(from: a.count-1, through: 0, by: -1) {
            row.append(a[i][j])
        }
        resultArray.append(row)
    }
    return resultArray
}

debugPrint(rotateImage(a: [[1, 2, 3],
                           [4, 5, 6],
                           [7, 8, 9]]))
