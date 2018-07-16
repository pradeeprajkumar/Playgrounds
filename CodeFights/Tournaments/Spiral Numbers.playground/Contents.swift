func spiralNumbers(n: Int) -> [[Int]] {
    var value = 0
    var resultArray: [[Int]] = []
    resultArray.reserveCapacity(n)
    
    return resultArray
}

for row in spiralNumbers(n: 3) {
    print(row)
}
