func checkSameElementExistence(arr1: [Int], arr2: [Int]) -> Bool {
    var arr1Dictionary: [Int: Bool] = [:]
    for value in arr1 {
        arr1Dictionary[value] = true
    }
    for value in arr2 {
        if arr1Dictionary[value] == true {
            return true
        }
    }
    return false
}

debugPrint(checkSameElementExistence(arr1: [1, 2, 3, 5], arr2: [1, 4, 5]))
