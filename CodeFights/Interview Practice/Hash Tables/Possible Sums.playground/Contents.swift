func possibleSums(coins: [Int], quantity: [Int]) -> Int {
    var sumsSet = Set<Int>()
    for (coin, quantity) in zip(coins, quantity) {
        var tempSet = Set<Int>()
        for times in 1 ... quantity {
            tempSet.insert(coin * times)
            sumsSet.map {
                tempSet.insert($0 + coin * times)
            }
        }
        sumsSet = sumsSet.union(tempSet)
    }
    return sumsSet.count
}

print(possibleSums(coins: [10, 50, 100], quantity: [1, 2, 1]))
//print(possibleSums(coins: [1,2], quantity: [50000, 2]))
