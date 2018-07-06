/*
 Question:
 Change the capitalization of all letters in a given string.
 
 Example
 
 For text = "Hello", the output should be
 swapCase(text) = "hELLO".
 
 Input/Output
 
 [execution time limit] 20 seconds (swift)
 
 [input] string text
 
 A string of lowercase and uppercase letters.
 
 Guaranteed constraints:
 2 ≤ text.length ≤ 10.
 
 [output] string
 
 The same string with initially lowercase letters capitalized and initially uppercase letters made lowercase.
*/
/*
func swapCase(text: String) -> String {
    if let result = text.unicodeScalars.map {
        if $0.value > 97 {
            print($0.value)
        }
    }
    return result
}

print(swapCase(text: "Hello"))
*/
import Foundation
var stringValue = "HThis.PDF"
print(stringValue.suffix(3))
