import Foundation
func binarySearch(inputArray: [Int], searchValue: Int) -> Bool {
    if inputArray.count <= 1 {
        return inputArray.first == searchValue
    }
    let midPoint = inputArray.count / 2
    //Search value is lesser than the current middle element
    if searchValue < inputArray[midPoint] {
        return binarySearch(inputArray: Array(inputArray[0..<midPoint]), searchValue: searchValue)
    } else if searchValue > inputArray[midPoint] {
    //Search value is greater than the current middle element
        return binarySearch(inputArray: Array(inputArray[midPoint..<inputArray.count]), searchValue: searchValue)
    }
    //Else, by default Search value is equal to the current middle element
    return true
}

print(binarySearch(inputArray: [1,2,3,5,7,8,9,11,14,15,16], searchValue: 3))
