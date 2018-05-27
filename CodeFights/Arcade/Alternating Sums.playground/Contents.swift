import Foundation

func alternatingSums(a: [Int]) -> [Int] {
    var evenSum = 0
    var oddSum = 0
    for index in 0..<a.count {
        if index % 2 == 0 {
            evenSum += a[index]
        } else {
            oddSum += a[index]
        }
    }
    return [evenSum, oddSum]
}

print(alternatingSums(a: [50, 60, 60, 45, 70]))
