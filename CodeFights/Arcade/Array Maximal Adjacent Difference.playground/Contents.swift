import Foundation

func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int {
    var maxDifference = 0
    for index in 0..<inputArray.count {
        if index > 0 {
            var maxValue = max(inputArray[index-1], inputArray[index])
            var minValue = min(inputArray[index-1], inputArray[index])

            if maxDifference < abs(maxValue-minValue) {
                maxDifference = abs(maxValue-minValue)
            }
        }
    }
    return maxDifference
}

print(arrayMaximalAdjacentDifference(inputArray: [10, 11, 13]))

//Check enumeration time vs for in index loop time
