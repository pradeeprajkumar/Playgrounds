import Foundation
//Solution 1: Using mod operator to extract each bit and add it
func arrayPacking(a: [Int]) -> Int {
    var result: Double = 0
    for (index, value) in a.enumerated() {
        var power: Double = Double(index) * 8.0 //8 bits for each value
        var number = value
        while number > 0 {
            if number % 2 == 1 {
                result += pow(2, power)
            }
            number /= 2
            power += 1
        }
    }
    return Int(result)
}
print(arrayPacking(a: [24, 85, 0]))

//Solution 2: Using bitwise shift operator to move the bits and add the values in array in reverse order
func arrayPacking2(a: [Int]) -> Int {
    var result = 0
    for value in stride(from: a.count-1, through: 0, by: -1) {
        result = result<<8 + a[value]
    }
    return result
}
print(arrayPacking2(a: [24, 85, 0]))
