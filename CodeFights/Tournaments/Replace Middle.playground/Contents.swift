func replaceMiddle(arr: [Int]) -> [Int] {
    var resultArray = arr
    if arr.count % 2 == 0 {
        resultArray[resultArray.count/2 - 1] = resultArray[resultArray.count/2 - 1] + resultArray[resultArray.count/2]
        resultArray.remove(at: resultArray.count/2)
    }
    return resultArray
}

debugPrint(replaceMiddle(arr: [-5, -5, 10]))
