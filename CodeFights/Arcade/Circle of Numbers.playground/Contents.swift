func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    return firstNumber < n/2 ? n/2+firstNumber : firstNumber-n/2
}

print(circleOfNumbers(n: 10, firstNumber: 7))
