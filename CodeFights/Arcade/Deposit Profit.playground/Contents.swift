func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
    var result = 0
    var currentAmount = Double(deposit)
    while currentAmount < Double(threshold) {
        currentAmount += currentAmount*(Double(rate)/100)
        result += 1
    }
    return result
}

print(depositProfit(deposit: 1, rate: 100, threshold: 64))
