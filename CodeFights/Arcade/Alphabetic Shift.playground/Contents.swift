import Foundation

func alphabeticShift(inputString: String) -> String {
    let resultArray = inputString.unicodeScalars.map { (scalar) -> Character in
        var newScalarValue: UInt32
        if scalar.value == 90 {
            newScalarValue = 65
        } else if scalar.value == 122 {
            newScalarValue = 97
        } else {
            newScalarValue = scalar.value+1
        }
        return Character(UnicodeScalar(newScalarValue)!)
    }
    return String(resultArray)
}

print(alphabeticShift(inputString: "abc"))
