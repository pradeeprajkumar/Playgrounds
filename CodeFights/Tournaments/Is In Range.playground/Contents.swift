func isInRange(a: Int, b: Int, c: Int) -> Bool {
    return a <= b && b <= c
}

debugPrint(isInRange(a: 0, b: 1, c: 1))

//NOTE: Using a range is not good, as forming it takes a lot of time.
