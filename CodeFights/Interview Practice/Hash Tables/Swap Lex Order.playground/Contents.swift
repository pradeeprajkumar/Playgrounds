func swapLexOrder(str: String, pairs: [[Int]]) -> String {
    var dictionary: [String:Bool] = [:]
    var tempString = ""
    while true {
        if dictionary[tempString] == true {
            return dictionary.keys.sorted().last!
        } else {
            dictionary
        }
    }
    return "dcba"
}

//print(swapLexOrder(str: "abcd", pairs: [[1, 4], [3, 4]]))
