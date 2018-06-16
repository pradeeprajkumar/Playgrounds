
func absoluteValuesSumMinimization(a: [Int]) -> Int {
    if a.count == 1 {
        return a.first!
    }
    
    var resultValue: Int = a.first!
    var minimumSoFar: Int?
    for value in a {
        let sum = a.reduce(0) {
            return  $0+abs($1-value)
        }
        if minimumSoFar == nil {
            minimumSoFar = sum
        }
        else if sum < minimumSoFar! {
            minimumSoFar = sum
            resultValue = value
        }
    }
    return resultValue
}
/*
func absoluteValuesSumMinimization(a: [Int]) -> Int {
    var minDiff = Int.max
    var minInt = Int.max
    for num in a {
        var d = 0
        for x in a {
            let dx = abs(num - x)
            d += dx
        }
        if d < minDiff {
            minDiff = d
            minInt = num
        }
        print("number \(num) and  \(d)")
        if d == minDiff {
            minInt = min(num, minInt)
        }
    }
    return minInt
}
 */


/*
func absoluteValuesSumMinimization(a: [Int]) -> Int {
    let n = a.count
    if n >= 2 && n % 2 == 0 {
        return a[n/2-1]
    }
    return a[n / 2]
}
*/

//print(absoluteValuesSumMinimization(a: [23]))
//print(absoluteValuesSumMinimization(a: [-100,1,20,40]))
print(absoluteValuesSumMinimization(a:  [-1000000, -10000, -10000, -1000, -100, -10, -1, 0, 1, 10, 100, 1000, 10000, 100000, 1000000]))
