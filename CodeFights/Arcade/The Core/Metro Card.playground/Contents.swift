func metroCard(lastNumberOfDays: Int) -> [Int] {
    return NumberOfDays(rawValue: lastNumberOfDays)!.nextSet()
}


enum NumberOfDays: Int {
    case short = 28
    case medium = 30
    case long = 31
    
    func nextSet() -> [Int] {
        switch self {
        case .short:
            return [NumberOfDays.medium.rawValue]
        case .medium:
            return [NumberOfDays.long.rawValue]
        case .long:
            return [NumberOfDays.short.rawValue, NumberOfDays.medium.rawValue, NumberOfDays.long.rawValue]
        }
    }
}

print(metroCard(lastNumberOfDays: 28))



/*
func metroCard(lastNumberOfDays: Int) -> [Int] {
    return lastNumberOfDays == 28 ? [31]
        : (lastNumberOfDays == 31 ? [28,30,31] : [31]);
}
*/
