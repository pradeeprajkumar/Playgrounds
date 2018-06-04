import Foundation


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

//Online code:
func avoidObstacles1(inputArray n: [Int]) -> Int {
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



var startTime = Date.timeIntervalSinceReferenceDate
//print("My code")
//print(avoidObstacles(inputArray: [3,5,7,9,11]))
//print(Date.timeIntervalSinceReferenceDate-startTime)
////
//startTime = Date.timeIntervalSinceReferenceDate
//print("Online code")
//print(avoidObstacles1(inputArray: [3,5,7,9,11]))
//print(Date.timeIntervalSinceReferenceDate-startTime)



func avoidObstacles2(inputArray: [Int]) -> Int {
    var divisor = 2
    var divisibleFound = false
    let sortedArray = inputArray.sorted()
    while divisor < sortedArray.last!+1 {
        for index in 0..<sortedArray.count {
            if sortedArray[index] % divisor == 0 {
                divisor += 1
                divisibleFound = true
                break
            } else {
                divisibleFound = false
            }
        }
        if divisibleFound == false {
            return divisor
        }
    }
    return divisor
}


startTime = Date.timeIntervalSinceReferenceDate
print("My modified code")
//print(avoidObstacles2(inputArray: [3,5,7,9,11]))
print(avoidObstacles2(inputArray: [1, 4, 10, 6, 2]))
print(Date.timeIntervalSinceReferenceDate-startTime)
