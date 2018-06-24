import Foundation

//Generic binary search
func binarySearch<T: Comparable>(inputArray: [T], searchValue: T) -> Bool {
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

//Int
print(binarySearch(inputArray: [1, 2, 3, 5, 7, 8, 9, 11, 14, 15, 16], searchValue: 3))

//Double
print(binarySearch(inputArray: [1.1, 2.01, 3.6, 5.8, 7.3, 8.6, 9.5, 11, 14, 15, 16], searchValue: 8.6))
