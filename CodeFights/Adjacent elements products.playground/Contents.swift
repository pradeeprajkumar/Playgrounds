//: Playground - noun: a place where people can play

func adjacentElementsProduct(inputArray: [Int]) -> Int {
    var maxProductSoFar: Int?
    if inputArray.count <= 0 {
        return 0
    }
    for index in 1..<inputArray.count {
        let currentProduct = inputArray[index] * inputArray[index-1]
        maxProductSoFar = (maxProductSoFar == nil || currentProduct > maxProductSoFar!) ? currentProduct : maxProductSoFar
    }
    return maxProductSoFar ?? 0
}

//var A = [-23, 4, -3, 8, -12]
var A:[Int] = []
print(adjacentElementsProduct(inputArray: A))
