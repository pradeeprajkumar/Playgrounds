func chessKnightMoves(cell: String) -> Int {
    var totalMoves = 8
    
    if cell.contains("a") || cell.contains("h") || cell.contains("1") || cell.contains("8") {
        totalMoves -= 4
    }
    if  cell == "a1" || cell == "a8" || cell == "h1" || cell == "h8" {
        totalMoves -= 2
    }
    
    return totalMoves
}

print(chessKnightMoves(cell: "a1"))
