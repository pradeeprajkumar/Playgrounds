//Sample reference: https://www.geeksforgeeks.org/add-two-numbers-without-using-arithmetic-operators/
func getSum(_ a: Int, _ b: Int) -> Int {
    var sum = 0
    var carryOver = 0
    var number = a
    var stringA = ""
    var stringB = ""
    while number > 0 {
        if number % 2 == 1 {
            stringA.append("1")
        } else {
            stringA.append("0")
        }
        number >>= 1
    }
    number = b
    while number > 0 {
        if number % 2 == 1 {
            stringB.append("1")
        } else {
            stringB.append("0")
        }
        number >>= 1
    }
    print(String(stringA.reversed()), String(stringB.reversed()))
    return sum
}

print(getSum(2, 5))
