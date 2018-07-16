func numberOfEvenDigits(n: Int) -> Int {
    var number = n, count = 0
    while number > 0 {
        count += number % 10 % 2 == 0 ? 1 : 0
        number /= 10
    }
    return count
}

print(numberOfEvenDigits(n: 123))
