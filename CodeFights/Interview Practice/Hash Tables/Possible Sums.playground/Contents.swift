func possibleSums(coins: [Int], quantity: [Int]) -> Int {
    var sumsDictionary = [Int:[Int]]()
    for (coin, coinQuantity) in zip(coins, quantity) {
        sumsDictionary[coin] = [coin] + sumsDictionary.values.flatMap {
            $0.map {
                $0 + coin
            }
        }
        if coinQuantity > 1 {
            var times = coinQuantity - 1
            let coinArray = sumsDictionary[coin]!
            while times > 0 {
                sumsDictionary[coin] = coinArray + sumsDictionary[coin]!.map {
                    return $0 + coin
                }
                times -= 1
            }
        }
    }
    print(Set(sumsDictionary.values.flatMap{ $0 }).sorted())
    return Set(sumsDictionary.values.flatMap{ $0 }).count
}

print(possibleSums(coins: [10, 50, 100], quantity: [1, 2, 1]))
