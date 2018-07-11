
func possibleSums(coins: [Int], quantity: [Int]) -> Int {
    var sumsDictionary = [Int:[Int]]()
    for (coin, coinQuantity) in zip(coins, quantity) {
        sumsDictionary[coin] = [coin] + sumsDictionary.values.flatMap {
            $0.map {
                $0 + coin
            }
        }
    }
    print(sumsDictionary.values.flatMap{ $0 })
    return 1
}

print(possibleSums(coins: [10, 50, 100], quantity: [1, 1, 1]))

//let arr = [[20, 30], [50], [100, 200]].flatMap {
//    return $0
//    }.map {
//        $0 * 0
//}
//print(arr)
