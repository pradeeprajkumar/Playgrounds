func oneTwoMany(n: Int) -> String {
    switch n {
    case 1:
        return "one"
    case 2:
        return "two"
    case 2...:
        return "many"
    default:
        return ""
    }
}

print(oneTwoMany(n: 3))
