func possibleSums(coins: [Int], quantity: [Int]) -> Int {
    var sumsDictionary = [Int:[Int]]()
    for (coin, coinQuantity) in zip(coins, quantity) {
        var numberOfCoins = 1
        while numberOfCoins <= coinQuantity {
            for key in sumsDictionary.keys {
                if key == coin {
                    sumsDictionary[key] = sumsDictionary[key]! + [coin * numberOfCoins]
                } else {
                    sumsDictionary[key] = sumsDictionary[key]! + [sumsDictionary[key]!.first! + coin * numberOfCoins]
                }
            }
            sumsDictionary[coin] = sumsDictionary[coin] == nil ? [coin] : sumsDictionary[coin]! + [sumsDictionary[coin]!.first! + coin]
//            print(sumsDictionary)
            numberOfCoins += 1
        }
    }
    print(sumsDictionary.values)
    return 1
}

print(possibleSums(coins: [10, 50, 100], quantity: [1, 2, 1]))
