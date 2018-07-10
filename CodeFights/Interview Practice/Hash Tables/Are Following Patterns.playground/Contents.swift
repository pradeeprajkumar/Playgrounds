func areFollowingPatterns(strings: [String], patterns: [String]) -> Bool {
    var resultDictionary: [String: String] = [:]
    for (key, value) in zip(patterns, strings) {
        if resultDictionary[key] == nil {
            if resultDictionary.values.contains(value) {
                return false
            }
            resultDictionary[key] = value
        } else if resultDictionary[key] != value {
            return false
        }
    }
    return true
}

print(areFollowingPatterns(strings: ["cat", "dog", "dog"], patterns: ["a", "b", "c"]))
