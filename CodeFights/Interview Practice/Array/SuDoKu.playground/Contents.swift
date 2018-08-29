func sudoku2(grid: [[Character]]) -> Bool {
    for i in 0 ..< grid.count {
        for j in 0 ..< grid[i].count {
            let char = grid[i][j]
            if let value = Int(String(char)) {
                //Check row
                if grid[i+1 ..< grid[i].count].contains(char) {
                    debugPrint(char)
                    return false
                }
                //Check column
//                if grid[i][j+1 ..< grid[]].contains(char) {
//                    return false
//                }
            }
        }
    }
    return true
}


print(sudoku2(grid: [[".", ".", ".", "1", "4", ".", ".", "2", "."],
                     [".", ".", "6", ".", ".", ".", ".", ".", "."],
                     [".", ".", ".", ".", ".", ".", ".", ".", "."],
                     [".", ".", "1", ".", ".", ".", ".", ".", "."],
                     [".", "6", "7", ".", ".", ".", ".", ".", "9"],
                     [".", ".", ".", ".", ".", ".", "8", "1", "."],
                     [".", "3", ".", ".", ".", ".", ".", ".", "6"],
                     [".", ".", ".", ".", ".", "7", ".", ".", "."],
                     [".", ".", ".", "5", ".", ".", ".", "7", "."]]))
