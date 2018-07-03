import Foundation
func rangeBitCount(a: Int, b: Int) -> Int {
    var totalBits = 0
    for value in a...b {
        var number = value
        while number > 0 {
            totalBits += number % 2 == 1 ? 1 : 0
            number >>= 1
        }
    }
    return totalBits
}

print("Total: \(rangeBitCount(a: 2, b: 7))")

//Get bit value in string
print("Bit value of 5 in String: \(String(5, radix: 2))")
