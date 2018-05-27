import Foundation

var str = "Hello world"
//str[str.index(str.startIndex, offsetBy: 3)]
//let substring = str[start..<end]
//print(String(str[str.index(str.startIndex, offsetBy: 3)]))
//print(Array(str.characters))


func reverseParentheses(s: String) -> String {
    var result = ""
    var index = 0
    while index < s.characters.count {
        let currentChar = String(s[s.index(s.startIndex, offsetBy: index)])
        if currentChar == "(" {
            
            index += 1
            result += "|"
            
            let start = s.index(s.startIndex, offsetBy: index)
            let range = start..<s.endIndex
            
            let reversedString = reverseParentheses(s: s.substring(with: range))
            result += reversedString
            index += reversedString.characters.count
        } else if currentChar == ")" {
            result = "|" + String(result.characters.reversed())
            return result
        } else {
            result += currentChar
            index += 1
        }
    }
    return result.replacingOccurrences(of: "|", with: "")
}

//print(reverseParentheses(s: "abc"))

print(reverseParentheses(s: "a(bcdefghijkl(mno)p)q"))
//cosfighted
