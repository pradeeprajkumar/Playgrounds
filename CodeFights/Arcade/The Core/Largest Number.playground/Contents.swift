import Foundation

func largestNumber(n: Int) -> Int {
    var result = 0
    var number = n
    
    while number > 0 {
        result = result * 10 + 9
        number -= 1
    }
    
    return result
}

print(largestNumber(n: 3))
