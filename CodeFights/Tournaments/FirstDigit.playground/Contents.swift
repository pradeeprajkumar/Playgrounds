import Foundation
func firstDigit(inputString: String) -> Character {
    for scalar in inputString.unicodeScalars {
        if CharacterSet.decimalDigits.contains(scalar) {
            return Character(scalar)
        }
    }
    return Character("")
}

print(firstDigit(inputString: "var7_1__I9nt"))
