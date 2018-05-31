import Foundation

func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
    //Condition 1: Heaviest each can lift = Totalweight of both the hands, should be equal
    //Condition 2: Strongest hand of ours == Strongest hand of theirs
    return yourLeft+yourRight == friendsLeft+friendsRight && max(yourLeft, yourRight) == max(friendsLeft, friendsRight)
}

print(areEquallyStrong(yourLeft: 9, yourRight: 15, friendsLeft: 15, friendsRight: 10))
