func zigzag(a: [Int]) -> Int {
    guard a.count > 0 else { return 0 }
    var lastMaxWindowSize = 1, currWindowSize = 1
    for index in 2 ..< a.count {
        if ((a[index-2] < a[index-1]) && (a[index-1] > a[index])) || ((a[index-2] > a[index-1]) && (a[index-1] < a[index])) {
            currWindowSize += 1
        } else {
            currWindowSize = 1
        }
        lastMaxWindowSize = currWindowSize > lastMaxWindowSize ? currWindowSize : lastMaxWindowSize
    }
    return lastMaxWindowSize > 1 ? lastMaxWindowSize + 1 : lastMaxWindowSize
}

print(zigzag(a: [1, 2, 0, 0, 1, 0, 2]))
