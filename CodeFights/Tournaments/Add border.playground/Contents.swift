func addBorder(picture: [String]) -> [String] {
    var resultArray: [String] = []
    var asterisks = ""
    for _ in 0 ... picture.first!.count+1 {
        asterisks.append("*")
    }
    resultArray.append(asterisks)
    for value in picture {
        resultArray.append("*\(value)*")
    }
    resultArray.append(asterisks)
    return resultArray
}
print(addBorder(picture: ["abc",
                          "ded"]))
