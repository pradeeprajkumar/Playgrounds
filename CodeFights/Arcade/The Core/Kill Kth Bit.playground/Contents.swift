import Foundation
func killKthBit(n: Int, k: Int) -> Int {
    var number = n, index = 0
    var result: Double = 0
    while number > 0 {
        if index != k-1 && number % 2 > 0 {
            //Add 2 power of index
            result += pow(2, Double(index))
        }
        number = number / 2
        index += 1
    }
    return Int(result)
}

print(killKthBit(n: 37, k: 3))
