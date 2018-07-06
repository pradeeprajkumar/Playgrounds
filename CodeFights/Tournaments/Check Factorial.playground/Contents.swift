//Check factorial
func checkFactorial(n: Int) -> Bool {
    var k = 1
    var factorial = 1
    while factorial <= n {
        if factorial == n {
            return true
        }
        factorial *= k
        k += 1
    }
    return false
}

print(checkFactorial(n: 122))
