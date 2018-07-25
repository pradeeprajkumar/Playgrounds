func commonCharacterCount(s1: String, s2: String) -> Int {
    var countDictionary: [Character: Int] = [:]
    var sum = 0
    for char in s1 {
        if countDictionary[char] == nil {
            countDictionary[char] = 1
        } else {
            countDictionary[char] = countDictionary[char]! + 1
        }
    }
    for char in s2 {
        if let value = countDictionary[char], value > 0 {
            countDictionary[char] = countDictionary[char]! - 1
            print(char)
            sum += 1
        }
    }
    return sum
}

print(commonCharacterCount(s1: "aabcc", s2: "adcaa"))
