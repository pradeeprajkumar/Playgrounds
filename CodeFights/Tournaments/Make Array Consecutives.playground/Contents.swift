func makeArrayConsecutive(sequence: [Int]) -> [Int] {
    var resultArray: [Int] = []
    let sortedArray = sequence.sorted()
    for i in 1 ..< sortedArray.count {
        if sortedArray[i] - sortedArray[i-1] > 1 {
            resultArray += Array(sortedArray[i-1]+1 ..< sortedArray[i])
        }
    }
    return resultArray
}

print(makeArrayConsecutive(sequence: [6, 2, 3, 8]))

