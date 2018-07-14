func cyclicSequence(sequence: [Int]) -> Bool {
    guard var prev = sequence.first else {
        return false
    }
    var lastMin = sequence.first!
    var cycleFound = false
    for curr in sequence[1...] {
        if prev < curr {
            // Continue
        } else {
            if cycleFound == true { //Only one cycle allowed
                return false
            } else {
                cycleFound = true
            }
        }
        prev = curr
    }
    return cycleFound == true ? sequence.last! < sequence.first! : true
}

print(cyclicSequence(sequence: [1, 3, 2]))
