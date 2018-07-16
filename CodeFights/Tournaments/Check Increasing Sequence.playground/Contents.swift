func checkIncreasingSequence(seq: [Int]) -> Bool {
    for index in 1 ..< seq.count {
        if seq[index] <= seq[index-1] {
            return false
        }
    }
    return true
}

print(checkIncreasingSequence(seq: [1, 3, 8]))
