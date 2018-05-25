import Foundation

//Other ways: Convert the number to a string and then use two pointers to check the total on both total

//This logic is to avoid the int to string conversion
//Traverse the digits once and find the total and count
//Traverse the half of the digits next time and multiply this total and compare with the toal value

func isLucky(n: Int) -> Bool {

    var number = n
    var count = 0
    var total = 0

    //Iterates all the digits once.
    //Time Complexity: O(n)
    while number > 0 {
        total += number%10
        number /= 10
        count += 1
    }

    if count%2 != 0 {
        //Number of digits were not equal(odd number of digits)
        return false
    }

    if total < 2 {
        return false
    }
    
    count /= 2
    number = n

    var halfTotal = 0
    //Iterates half the number of digits
    //Time Complexity: O(n/2)
    while count > 0 {
        halfTotal += number%10
        number /= 10
        count -= 1
    }

    if halfTotal*2 == total && count == 0{
        return true
    }

    //Total time complexity: O(n) + O(n/2)
    return false
}

print(isLucky(n: 11002000))
