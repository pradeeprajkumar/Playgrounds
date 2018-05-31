import Foundation

func addTwoDigits(n: Int) -> Int {
    var result = 0
    var number = n
    while number > 0 {
        result += number%10
        number /= 10
    }
    return result
}

print(addTwoDigits(n: 392))
