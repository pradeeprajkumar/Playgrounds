func truncateString(s: String) -> String {
    var resultArray = s.map {
        Int("\($0)")!
    }
    var i = 0, j = resultArray.count - 1
    while i < resultArray.count && i <= j {
        if resultArray[i] % 3 == 0 {
            i += 1
        } else if resultArray[j] % 3 == 0 {
            j -= 1
        } else if (resultArray[i] + resultArray[j]) % 3 == 0 {
            i += 1; j -= 1
        } else {
            break
        }
    }
    return i <= j ? resultArray[i...j].reduce("") { $0 + "\($1)" } : ""
}

print(truncateString(s: "312248"))
