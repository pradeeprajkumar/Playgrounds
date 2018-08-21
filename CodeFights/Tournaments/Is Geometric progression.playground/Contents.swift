func isGeometricProgression(sequence: [Int]) -> Bool {
    guard sequence.count > 1 else {
        return true
    }
    var greater: Int
    var smaller: Int
    var multiplier: Float
    if sequence[0] > sequence[1] {
        multiplier = Float(sequence[0] / sequence[1])
        multiplier = 1 / multiplier
    } else {
        multiplier = Float(sequence[1] / sequence[0])
    }
    
    for index in 1 ..< sequence.count {
        if Float(sequence[index-1]) * multiplier != Float(sequence[index]) {
            return false
        }
    }
    return true
}

print(isGeometricProgression(sequence: [27, 9, 3, 1]))
