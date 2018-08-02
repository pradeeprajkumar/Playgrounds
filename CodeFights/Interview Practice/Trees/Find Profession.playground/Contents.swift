func findProfession(level: Int, pos: Int) -> String {
    if level == 1 {
        return "Engineer"
    }
    if findProfession(level: level-1, pos: (pos+1)/2) == "Engineer" {
        //Engineer: left = 1, right = 2
        return pos % 2 == 1 ? "Engineer" : "Doctor"
    } else {
        //Doctor: left = 1, right = 2
        return pos % 2 == 1 ? "Doctor" : "Engineer"
    }
}

print(findProfession(level: 25, pos: 3))

