func rightmostRoundNumber(inputArray: [Int]) -> Int {
    var result = 0
    for value in inputArray {
        if value % 10 == 0 {
            result += 1
        }
    }
    return result == 0 ? -1 : result
}

print(rightmostRoundNumber(inputArray: [1, 2, 3, 4, 5]))
