func sumOfTheAngles(n: Int) -> Int {
    switch n%4 {
        case 0:
            return 360
        case 1:
            return 45
        case 2:
            return 90
        case 3:
            return 180
        default:
            return 0
    }
}
print(sumOfTheAngles(n: 3))
