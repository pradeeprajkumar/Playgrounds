
func containsDuplicates(a: [Int]) -> Bool {
    var tempDictionary: [Int: Bool] = [:]
    for value in a {
        if tempDictionary[value] == true {
            return true
        } else {
            tempDictionary[value] = true
        }
    }
    return false
}

print(containsDuplicates(a: [1, 2, 3]))

//Time complexity:  O(n)
//Space complexity: O(n)
