func isMonotonous(sequence: [Int]) -> Bool {
    guard sequence.count > 1 else {
        return true
    }
    guard sequence[0] != sequence[1] else {
        return false
    }
    let isIncreasing = sequence[0] < sequence[1]
    var index = 2
    while index < sequence.count {
        if isIncreasing {//Ascending order
            if sequence[index-1] > sequence[index] { //Broke the increasing sequence
                return false
            }
        } else {//Descending order
            if sequence[index-1] < sequence[index] { //Broke the decreasing sequence
                return false
            }
        }
        index += 1
    }
    return true
}

print(isMonotonous(sequence: [3,3]))
