//Find if a sub array can be formed in an array that equals the given sum value
//All are non negative numbers
//Time Complexity: O(n)
func subArraySum(array: [Int], sum: Int) -> Bool {
    var start = 0, end = 1
    guard var currSum = array.first else {
        //Empty array
        return false
    }
    //Logic: Sliding window with variable size, window slides the array at the same time, it shrinks based on the sum value
    while start <= end, end < array.count {
        if currSum == sum {
            //Found the right sum
            return true
        } else if currSum < sum {
            currSum += array[end]
            if currSum == sum {
                return true
            }
            end += 1
        } else if currSum > sum {
            
            currSum -= array[start]
            if currSum == sum {
                return true
            }
            start += 1
        }
        print(currSum)
    }
    return false
}

print(subArraySum(array: [1,4,0,0,3,10,5], sum: 7))
