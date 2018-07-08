func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
    guard k < inputArray.count else {
        return 0
    }
    var maxValue = 0, count = inputArray.count
    for mainIndex in 0 ... count - k {
        var currentSum = 0
        for windowIndex in 0 ..< k {
            currentSum += inputArray[mainIndex + windowIndex]
        }
        maxValue = max(currentSum, maxValue)
    }
    return maxValue
}


print(arrayMaxConsecutiveSum(inputArray: [1, 3, 2, 4], k: 3))
//Do no use array splice unless the array is small, for very big array's, the array splice is taking up so much memory and time
