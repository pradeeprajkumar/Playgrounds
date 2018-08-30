func isUniqueLetters(_ input: String) -> Bool{
    return Set(input).count == input.count
}

print(isUniqueLetters("abcABC"))
