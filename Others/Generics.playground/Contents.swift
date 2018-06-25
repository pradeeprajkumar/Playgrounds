
class Arithmetic<T: Numeric> {
    var initialValue: T
    init(value: T) {
        initialValue = value
    }
    func add(value1: T, value2: T) -> T {
        return value1 + value2 + initialValue
    }
}
let addition = Arithmetic(value: 5)//Initial value is an Int
print(addition.add(value1: 2, value2: 3))

let addition2 = Arithmetic(value: 5.4)//Initial value is a Double
print(addition2.add(value1: 2.5, value2: 3))
