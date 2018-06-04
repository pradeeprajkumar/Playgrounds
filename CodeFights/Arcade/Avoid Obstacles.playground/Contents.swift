import Foundation

/*
//Online code:
func avoidObstacles(inputArray n: [Int]) -> Int {
    var r = 2
    o: while true {
        for i in n {
            if i%r < 1 {
                r += 1
                continue o
            }
        }
        break
    }
    return r
}
*/
//My Code
func avoidObstacles(inputArray: [Int]) -> Int {
    var hopPointsArray: [Int] = []
    let sortedArray = inputArray.sorted()

    //Time complexity: O(n)
    for index in 1...(sortedArray.last! + 1) {
        if !sortedArray.contains(index) {
            hopPointsArray.append(index)
        }
    }

    var arrayIndex = 0
    var value = hopPointsArray[arrayIndex]
    var index = 2
    //Time complexity: O(nˆ2)
    while value*index <= hopPointsArray.last! {
        if value*index > sortedArray.last! {
            return value
        }
        if !hopPointsArray.contains(value*index) {
            arrayIndex += 1
            index = 2
            value = hopPointsArray[arrayIndex]
            continue
        }
        index += 1
    }
    return value
}

//print(avoidObstacles(inputArray: [19, 32, 11, 23]))
print(avoidObstacles(inputArray: [3,5,7,9,11]))
