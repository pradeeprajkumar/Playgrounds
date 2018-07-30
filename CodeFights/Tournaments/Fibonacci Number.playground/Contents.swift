func fibonacciNumber(n: Int) -> Int {
    guard n > 1 else {
        return n
    }
    var prev1 = 0, prev2 = 1
    var index = 1
    var result = 0
    while index < n {
        result = prev1 + prev2
        prev1 = prev2
        prev2 = result
        index += 1
    }
    return result
}

print(fibonacciNumber(n: 7))
