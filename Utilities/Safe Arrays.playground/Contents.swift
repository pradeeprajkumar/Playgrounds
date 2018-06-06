

extension Array where Element == [Bool] {
    subscript(r: Int, c: Int) -> Int {
        guard 0..<self.count ~= r, 0..<self[r].count ~= c else { return 0 }
        return self[r][c] == true ? 1 : 0
    }
}

