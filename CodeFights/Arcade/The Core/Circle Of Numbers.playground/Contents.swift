func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    return (n/2 + firstNumber) % n
}

print(circleOfNumbers(n: 20, firstNumber: 2))
