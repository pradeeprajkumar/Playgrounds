func countNeighbouringPairs(inputString: String) -> Int {
    guard inputString.characters.count > 0 else {
        return 0
    }
    var localCount = 0, maxCount = 0
    var pairFound = false
    var prev: Character?
    for curr in inputString.characters {
        if prev != nil {
            if prev == curr {
                localCount += 1
                pairFound = true
            } else {
                localCount = 1
            }
            maxCount = localCount > maxCount ? localCount : maxCount
        }
        prev = curr
    }
    print(maxCount)
    return pairFound == true ? maxCount : maxCount - 1
}

print(countNeighbouringPairs(inputString: "abcd"))
