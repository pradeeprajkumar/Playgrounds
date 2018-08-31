func isPalindrome(_ A: String) -> Bool {
    return A == String(A.reversed())
}

var str = "ABCBA"
var str1 = "Hello, playground"

print(isPalindrome(str))
print(isPalindrome(str1))
