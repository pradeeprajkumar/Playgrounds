func arraySumAdjacentDifference(inputArray: [Int]) -> Int {
    var sum = 0
    for (index, value) in inputArray.enumerated() {
        if index > 0 {
            sum += value > inputArray[index-1] ? value - inputArray[index-1] : inputArray[index-1] - value
        }
    }
    return sum
}

print(arraySumAdjacentDifference(inputArray: [4, 7, 1, 2]))
