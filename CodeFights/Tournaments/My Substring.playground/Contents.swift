func mySubstring(inputString: String, l: Int, r: Int) -> String {
    let start = inputString.index(inputString.startIndex, offsetBy: l)
    let end = inputString.index(inputString.startIndex, offsetBy: r)
    return String(inputString[start ... end])
}
debugPrint(mySubstring(inputString: "abcde", l: 2, r: 3))

