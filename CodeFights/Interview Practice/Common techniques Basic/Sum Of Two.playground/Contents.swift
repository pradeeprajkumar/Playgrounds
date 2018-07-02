import Foundation
//Logic: Try to find the difference in second array
//Time complexity: O(nˆ2)
//Time complexity: O(1)
func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
    for value in a {
        if b.contains(v - value) {
            return true
        }
    }
    return false
}

//Logic: Hash the first array, Iterate the second array and find the difference in dictionary
//Time complexity: O(m) + O(n)
//Space complexity: O(m)
//In dictionary, complexity of getting a value is O(1)
func sumOfTwo2(a: [Int], b: [Int], v: Int) -> Bool {
    var dictionary: [Int: Bool] = [:]    
    for value in a {
        dictionary[value] = true
    }
    for value in b {
        if dictionary[v - value] == true {
            return true
        }
    }
    return false
}

//Logic: Sort array B, and use Binary search to find the difference value
//Time complexity: O(n.logn) + O(n.logn)
//Space complexity: O(1)
func sumOfTwo3(a: [Int], b: [Int], v: Int) -> Bool {
    let sortedB = b.sorted()
    for value in a {
        if binarySearch(sortedB, v-value) {
            return true
        }
    }
    return false
}

func binarySearch(_ inputArray: [Int], _ value: Int) -> Bool {
    let midpoint = inputArray.count/2
    if midpoint > 0 {
        if value < inputArray[midpoint] {
            return binarySearch(Array(inputArray[0..<midpoint]), value)
        } else if value > inputArray[midpoint] {
            return binarySearch(Array(inputArray[midpoint..<inputArray.count]), value)
        }
    }
    //Last item or equal value found
    return value == inputArray[midpoint] ? true : false
}

print(sumOfTwo3(a: [1, 2, 3], b: [10, 20, 30, 40], v: 12))

//Time complexity: O(n.logn) => O(n.logn) + O(n.logn) + n + n
//Sorting A + Sorting B + Iterating A + Iterating B
