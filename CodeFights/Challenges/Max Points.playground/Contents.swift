func maxPoints(matches: Int, goalsFor: Int, goalsAgainst: Int) -> Int {
    if goalsFor - goalsAgainst >= matches {
        return matches * 3
    } else if goalsFor > goalsAgainst {
        //For the draw match
        if (goalsFor - goalsAgainst) >= (matches - 1) {
            return (matches - 1) * 3 + 1
        }
    } else if goalsFor == goalsAgainst {
        if matches <= 1 {
            return 1
        }
    }
    return (matches - 1) * 3
}



print(maxPoints(matches: 2, goalsFor: 3, goalsAgainst: 3))
