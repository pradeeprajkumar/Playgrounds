func mySubstring(inputString: String, l: Int, r: Int) -> String {
    let startIndex = inputString.index(inputString.startIndex, offsetBy: l)
    let endIndex = inputString.index(inputString.startIndex, offsetBy: r)
    return String(inputString[startIndex ... endIndex])
}

print(mySubstring(inputString: "abcde", l: 2, r: 3))
