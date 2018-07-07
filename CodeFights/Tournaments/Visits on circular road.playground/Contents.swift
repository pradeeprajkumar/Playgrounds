import Foundation
func visitsOnCircularRoad(n: Int, visitsOrder: [Int]) -> Int {    
    let sum = visitsOrder.reduce(0) {
        print(abs($0-$1))
        return abs($0-$1)
    }
    return sum
}

visitsOnCircularRoad(n: 4, visitsOrder: [1, 3, 2, 3, 1])
