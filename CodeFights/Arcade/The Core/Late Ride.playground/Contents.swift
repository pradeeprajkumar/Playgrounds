func lateRide(n: Int) -> Int {
    return (n/60).digitSum() + (n%60).digitSum()
}

extension Int {
    func digitSum() -> Int {
        return self < 1 ? 0 :  self % 10 + (self/10).digitSum()
    }
}

print(lateRide(n: 808))
