func reduceString(inputString: String) -> String {
    var stringValue = inputString
    while stringValue.count > 0 {
        if stringValue.first == stringValue.last {
            stringValue = String(stringValue.dropFirst())
            stringValue = String(stringValue.dropLast())
        } else {
            return stringValue
        }
    }
    return stringValue
}

print(reduceString(inputString: "abacaba"))
