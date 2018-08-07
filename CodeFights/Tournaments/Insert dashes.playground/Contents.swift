func insertDashes(inputString: String) -> String {
    var resultString = ""
    for char in inputString {
         if resultString.count > 0 && resultString.last != " " && char != " " {
            resultString.append("-")
        }
        resultString.append(char)
    }
    return resultString
}

debugPrint(insertDashes(inputString: "aba caba"))
