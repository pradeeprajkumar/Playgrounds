//: Playground - noun: a place where people can play

func shapeArea(n: Int) -> Int {
    //1,4,8,12,16,20...
    //All the items are a multiple of 4
    var number = n
    var result = 1
    while number > 1 {
        result += 4*(number-1)
        number -= 1
    }
    return result
}


print(shapeArea(n: 2))
