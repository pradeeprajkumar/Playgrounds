func evenDigitsOnly(n: Int) -> Bool {
    var number = n
    while number > 0 {
        if (number%10)%2 != 0 {
            return false
        }
        number /= 10
    }
    return true
}
print(evenDigitsOnly(n: 426080))
