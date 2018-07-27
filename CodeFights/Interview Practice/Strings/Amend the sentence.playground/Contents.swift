func amendTheSentence(s: String) -> String {
    var resultString = ""
    for char in s.characters {
        if "\(char)" == "\(char)".uppercased() {
            resultString.append(" \(char)".lowercased())
        } else {
            resultString.append(char)
        }
    }
    let firstChar = String(s.characters.prefix(1))
    if firstChar == firstChar.uppercased() {
        return String(resultString.characters.dropFirst())
    } else {
        return resultString
    }
}

print(amendTheSentence(s: "CodesignalIsAwesome"))

