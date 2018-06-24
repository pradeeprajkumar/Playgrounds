func phoneCall(min1: Int, min2_10: Int, min11: Int, s: Int) -> Int {
    var balance = s
    if balance < min1 {
        return 0
    }
    balance -= min1
    if balance < 9*min2_10 {
        return 1 + balance/min2_10
    }
    balance -= 9*min2_10
    return balance > 0 ? balance/min11 + 1 + 9 : 0
}

print(phoneCall(min1: 3, min2_10: 1, min11: 2, s: 20))
import PlaygroundSupport
