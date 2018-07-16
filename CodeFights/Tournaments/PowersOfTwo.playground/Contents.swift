import Foundation
func powersOfTwo(n: Int) -> [Int] {
    var number = n, index = 0.0
    var resultArray: [Int] = []
    while number > 0 {
        if number % 2 == 1 {
            resultArray.append(Int(NSDecimalNumber(decimal: Decimal(pow(2, index)))))
        }
        number >>= 1
        index += 1
    }
    return resultArray
}

print(powersOfTwo(n: 5))
