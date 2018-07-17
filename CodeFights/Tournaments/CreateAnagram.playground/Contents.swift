func createAnagram(s: String, t: String) -> Int {
    var countDictionary: [Character: Int] = [:]
    for char in s {
        countDictionary[char] = countDictionary[char] == nil ? 1 : countDictionary[char]! + 1
    }
    for char in t {
        if countDictionary[char] != nil {
            countDictionary[char] = countDictionary[char]! - 1
        }
    }
    return countDictionary.values.reduce(0) {
        $1 > 0 ? $0 + $1 : $0
    }
}

print(createAnagram(s: "OVGHK", t: "RPGUC"))
