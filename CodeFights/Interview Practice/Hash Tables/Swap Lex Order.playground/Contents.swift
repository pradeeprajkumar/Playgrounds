func swapLexOrder(str: String, pairs: [[Int]]) -> String {
    guard pairs.first?.count == 2 else {
        return str
    }
    var dictionary: [String:Bool] = [:]
    var newString = str
    var stringRepeated = false

    while true {
        for pair in pairs {
            
            var charArray = Array(newString.characters)
            let tempChar = charArray[pair.first!-1]
            charArray[pair.first! - 1] = charArray[pair.last! - 1]
            charArray[pair.last! - 1] = tempChar
            newString = String(charArray)
            
            if newString == str {
                //print(pair)
                stringRepeated = true
            } else if dictionary[newString] != true {
                print(newString)
                dictionary[newString] = true
            }
        }
        if stringRepeated {
//            print(newString, dictionary[newString])
            break
        }
    }
    print("\n")
    return dictionary.keys.sorted().last!
}
print(swapLexOrder(str: "abdc", pairs: [[1, 4], [3, 4]]))

/*
var pair = [2,6]

var stringValue = "abcdef"
//    stringValue.prefix(pair.first - 1) + stringValue.
var charArray = Array(stringValue)
let tempChar = charArray[pair.first!]
charArray[pair.first! - 1] = charArray[pair.last! - 1]
charArray[pair.last! - 1] = tempChar
var newString = String(charArray)
//print(newString)
*/
