func containsCloseNums(nums: [Int], k: Int) -> Bool {
    var indexesDictionary: [Int:[Int]] = [:]
    for (index, value) in nums.enumerated() {
        if indexesDictionary[value] == nil {
            indexesDictionary[value] = [index]
        } else {
            if abs(indexesDictionary[value]!.last! - index) <= k {
                return true
            }
            indexesDictionary[value] = indexesDictionary[value]! + [index]
        }
    }
    return false
}

print(containsCloseNums(nums: [1, 0, 1, 1], k: 1))
