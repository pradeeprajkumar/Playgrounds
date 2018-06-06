func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    var resultArray: [Int] = []
    for value in inputArray {
        if value == elemToReplace {
            resultArray.append(substitutionElem)
        } else {
            resultArray.append(value)
        }
    }
    return resultArray
}


print(arrayReplace(inputArray: [1, 2, 1], elemToReplace: 1, substitutionElem: 3))
