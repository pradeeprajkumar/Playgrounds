import Foundation

func addBorder(picture: [String]) -> [String] {
    var result: [String] = []
    
    let rowCount = picture.count
    guard rowCount > 0 else {
        return result
    }
    
    let columnCount = picture.first!.count + 2
    let starsRow = getStarsRow(count: columnCount)
    result.append(starsRow)
    for row in picture {
        result.append("*\(row)*")
    }
    result.append(starsRow)
    return result
}

func getStarsRow(count: Int) -> String {
    var result: String = ""
    for _ in 0..<count {
        result.append("*")
    }
    return result
}

print(addBorder(picture: ["abc",
                          "ded"]))
