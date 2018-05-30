import Foundation

func sortByHeight(a: [Int]) -> [Int] {
    
    let startTime = Date.timeIntervalSinceReferenceDate
    
    //Space complexity: (2n)

    //We created one result array, and one sorted array
    var resultArray: [Int] = []
    //Time complexity: O(n*log(n))
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
    
    print("\nMy code \n Time taken: \(Date.timeIntervalSinceReferenceDate - startTime) seconds")
    print(" Total time complexity: O(n+n*log(n))")
    return resultArray
}


func sortByHeight2(a: [Int]) -> [Int] {
    let startTime = Date.timeIntervalSinceReferenceDate
    //Time complexity for Filtering: O(n)
    //Time complexity for Sorting: O(n*log(n))
    var sorted = a.filter({$0 != -1}).sorted()

    //Time complexity for inserting: O(nˆ2)
    //Worst case, if we insert -1 everytime in the beginning, we will end up at nˆ2
    for i in 0..<a.count {
        if a[i] == -1 {
            sorted.insert(-1, at: i)
        }
    }
    print("\nOnline code \n Time taken: \(Date.timeIntervalSinceReferenceDate - startTime) seconds")
    print(" Total time complexity: O(n+n*log(n)+nˆ2)")
    return sorted
}


let array = [-1, 150, 190, 170, -1, 8, -1, 160, 8, -1, 160, 180, 7, 8, 160, 180, 7, -1, 8, 4, -1, 60, 53, -1, 11, 22, -1, 85, 48, 60, 180, 7, 8, 160, 180, 7, -1, 8, 4, -1, 60, 53, -1, 11, 22, -1, 85, 48, 60, -1, 3, 1, 2, 5, 8, -1, 160, 180, 7, 8, 160, 180, 7, -1, 8, 4, -1, 60, 53, -1, 11, 22, -1, 85, 48, 60]

print(sortByHeight(a: array))
print(sortByHeight2(a: array))
