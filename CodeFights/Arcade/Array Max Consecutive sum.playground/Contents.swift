func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
    var max = 0
    for mainIndex in 0..<inputArray.count {
        var windowIndex = 0
        var currentSum = 0
        while windowIndex < k && mainIndex + windowIndex < inputArray.count {
            currentSum += inputArray[mainIndex + windowIndex]
            windowIndex += 1
        }
        max = currentSum > max ? currentSum : max
    }
    return max
}

print(arrayMaxConsecutiveSum(inputArray: [2, 3, 5, 1, 6], k: 2))
