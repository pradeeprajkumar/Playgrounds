func tennisSet(score1: Int, score2: Int) -> Bool {
    //One is 6 and other is less than 5
    if score1 == 6 && score2 < 5 || score1 < 5 && score2 == 6 {
        return true
    } else if score1 >= 5 && score2 >= 5 {
        return !(score1 == 7 && score2 == 7) && (score1 == 7 || score2 == 7)
    }
    return false
}

print(tennisSet(score1: 7, score2: 2))
