func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    return (n/2 + firstNumber)%n
}

print(circleOfNumbers(n: 10, firstNumber: 2))
