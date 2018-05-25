import Foundation

func sortByHeight(a: [Int]) -> [Int] {
    //Space complexity: (2n)
    //We created one result array, and one sorted array
    var resultArray: [Int] = []
    //Time complexity: O(n*Log(n))
    var sortedArray = a.sorted()
    var positiveIndex = 0
    while positiveIndex < sortedArray.count {
        if sortedArray[positiveIndex] == -1 {
            positiveIndex += 1
        }
        else {
            break
        }
    }
    //Time complexity: O(n)
    for index in 0..<a.count {
        if a[index] == -1 {
            resultArray.append(-1)
        }
        else {
            resultArray.append(sortedArray[positiveIndex])
            positiveIndex += 1
        }
    }
    
    return resultArray
}

print(sortByHeight(a: [-1, 150, 190, 170, -1, -1, 160, 180]))
