func maxMultiple(divisor: Int, bound: Int) -> Int {
    return bound/divisor * divisor
}

print(maxMultiple(divisor: 3, bound: 10))

/*
func maxMultiple(divisor: Int, bound: Int) -> Int {
    var number = bound
    while divisor < number {
        if number % divisor == 0 {
            return number
        }
        number -= 1
    }
    return divisor
}
*/

