func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
    var resultArray = [Int]()    
    for (index, value) in inputArray.enumerated() {
        if (index+1) % k != 0 {
            resultArray.append(value)
        }
    }
    return resultArray
}

print(extractEachKth(inputArray: [1, 1, 1, 1, 1], k: 1))
