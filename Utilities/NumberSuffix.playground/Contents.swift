//: An extension method to return the string value of the integer

extension Int {
    func suffixed() -> String? {
        var result: String?
        if self < 0 {
            return result
        }
        let lastDigits = (1...20).contains(self%100) ? self%100: self%10
        switch lastDigits {
            case 1: result = "\(self)st"
            case 2: result = "\(self)nd"
            case 3: result = "\(self)rd"
            case 0, 4...20: result = "\(self)th"
            default:
                result = nil
        }
        return result
    }
}

for index in -18...300 {
    if let value = index.suffixed() {
        print(value)
    }
}
