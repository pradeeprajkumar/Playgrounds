import Foundation

func arrayChange(inputArray: [Int]) -> Int {
    var result = 0
    var array = inputArray

    for (index, currValue) in array.enumerated() {
        if index > 0 {
            if currValue < array[index-1] {
                result += array[index-1] - currValue + 1
                array[index] = array[index] + array[index-1] - currValue + 1
            } else if currValue == array[index-1] {
                result += 1
                array[index] = array[index] + 1
            }
        }
    }
    return result
}

print(arrayChange(inputArray: [1, 2, 1]))
