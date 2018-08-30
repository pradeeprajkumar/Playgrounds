import Foundation
var str = "ABCBA"
var str1 = "Hello, playground"
func isPalindrome(_ A: String) -> Bool {
    return A == String(A.reversed())
}

print(isPalindrome(str))
print(isPalindrome(str1))
