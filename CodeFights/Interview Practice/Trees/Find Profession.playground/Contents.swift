func findProfession(level: Int, pos: Int) -> String {
    var index = 0
    var parentQueue: [Int] = [1]
    repeat {
        var childQueue: [Int] = []
        for profession in parentQueue {
            if profession == 1 {
                childQueue.append(1)
                childQueue.append(0)
            } else {
                childQueue.append(0)
                childQueue.append(1)
            }
        }
        parentQueue = childQueue
        index += 1
    } while index < level
    return parentQueue[pos-1] == 1 ? "Engineer" : "Doctor"
}

print(findProfession(level: 25, pos: 3))
