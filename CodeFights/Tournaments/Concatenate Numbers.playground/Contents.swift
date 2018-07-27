func concatenateNumbers(a: Int, b: Int) -> Int {
    var result = a
    var number = b
    var count = 1
    while number > 0 {
        number /= 10
        count *= 10
    }
    return result * count + b
}

print(concatenateNumbers(a: 23, b: 45))
