func maxPoints(matches: Int, goalsFor: Int, goalsAgainst: Int) -> Int {
    var matchWins = 0, matchDraws = 0
    let difference = goalsFor - goalsAgainst
    matchWins = difference >= matches ? matches : matches - 1
    
    matchDraws = difference >= matches && matchWins != matches ? 1 : 0
    if difference == 0 && matches == 1 {
        matchDraws = 1
    }
    
    return matchWins * 3 + matchDraws
}

print(maxPoints(matches: 2, goalsFor: 3, goalsAgainst: 2))
