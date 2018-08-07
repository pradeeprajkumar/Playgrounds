func throwableFunc() throws {
    defer {
        deferedFunc1()
        deferedFunc2()
    }
    defer {
        deferedFunc3()
    }
    debugPrint("Before throw")
    throw Test.sampleError
    debugPrint("After throw")
}

enum Test: Error {
    case sampleError
}

func deferedFunc1() {
    debugPrint("This is deferred function 1")
}

func deferedFunc2() {
    debugPrint("This is deferred function 2")
}

func deferedFunc3() {
    debugPrint("This is deferred function 3")
}

do {
    try throwableFunc()
} catch {
    debugPrint(error)
}
