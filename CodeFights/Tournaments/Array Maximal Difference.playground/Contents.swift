func arrayMaximalDifference(inputArray: [Int]) -> Int {
    var max = inputArray.first ?? 0
    var index = 1
    while index < inputArray.count {
        max = abs(inputArray[index-1] - inputArray[index]) > max ? abs(inputArray[index-1] - inputArray[index]) : max
        index += 1
    }
    return max
}


print(arrayMaximalDifference(inputArray: [1, -4, 10, -3, 12]))
