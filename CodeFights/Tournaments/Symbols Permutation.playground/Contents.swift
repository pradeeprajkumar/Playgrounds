func symbolsPermutation(word1: String, word2: String) -> Bool {
    var countDictionary: [Character: Int] = [:]
    for char in word1 {
        if countDictionary[char] == nil {
            countDictionary[char] = 1
        } else {
            countDictionary[char] = countDictionary[char]! + 1
        }
    }
    for char in word2 {
        if countDictionary[char] != nil {
            countDictionary[char] = countDictionary[char]! - 1
        } else {
            return false
        }
    }
    return countDictionary.values.reduce(0, +) == 0 ? true : false
}

print(symbolsPermutation(word1: "abc", word2: "ctab"))
