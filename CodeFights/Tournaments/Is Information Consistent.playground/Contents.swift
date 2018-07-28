func isInformationConsistent(evidences: [[Int]]) -> Bool {
    for columnIndex in 0 ..< evidences.first!.count {
        var declaredGuilty: Bool?
        for rowIndex in 0 ..< evidences.count {
            if evidences[rowIndex][columnIndex] < 0 { //-1 is innocent
                if declaredGuilty != nil && declaredGuilty! == true {
                    return false
                } else {
                    declaredGuilty = false
                }
            } else if evidences[rowIndex][columnIndex] > 0 { //1 is Guilty
                if declaredGuilty != nil && declaredGuilty! == false {
                    return false
                } else {
                    declaredGuilty = true
                }
            }
        }
    }
    return true
}

print(isInformationConsistent(evidences: [[ 1, 0],
                                          [-1, 0],
                                          [ 1, 1],
                                          [ 1, 1]]))
