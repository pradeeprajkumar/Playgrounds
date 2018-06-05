import Foundation
func boxBlur(image: [[Int]]) -> [[Int]] {
    var resultArray = [[Int]]()
    let max = 2
    var rowIndex = 0, columnIndex = 0
    while rowIndex+max < image.count  {
        var row: [Int] = []
        while columnIndex+max < image[rowIndex].count {
            var sum = 0
            sum =  image[rowIndex][columnIndex] + image[rowIndex][columnIndex+1] + image[rowIndex][columnIndex+2]
            sum += image[rowIndex+1][columnIndex] + image[rowIndex+1][columnIndex+1] + image[rowIndex+1][columnIndex+2]
            sum += image[rowIndex+2][columnIndex] + image[rowIndex+2][columnIndex+1] + image[rowIndex+2][columnIndex+2]
            row.append(sum/9)
            columnIndex += 1
        }
        resultArray.append(row)
        
        //Reset the column index
        columnIndex = 0
        //Move to the next row, that is below the current row
        rowIndex += 1
    }
    return resultArray
}

func boxBlur2(image: [[Int]]) -> [[Int]] {
    var output = [[Int]]()
    for i in 1..<image.count-1 {
        var line = [Int]()
        for j in 1..<image[0].count-1 {
            let pixel = image[i-1...i+1].reduce(0){
                $0 + $1[j-1...j+1].reduce(0) {
                    $0 + $1
                }
                } / 9
            line.append(pixel)
        }
        output.append(line)
    }
    return output
}

let imageArray = [[7, 4, 0, 1],
             [5, 6, 2, 2],
             [6, 10, 7, 8],
             [1, 4, 2, 0]]
var startTime = Date.timeIntervalSinceReferenceDate
print(boxBlur(image: imageArray))
//print(Date.timeIntervalSinceReferenceDate - startTime)
startTime = Date.timeIntervalSinceReferenceDate
print(boxBlur2(image: imageArray))
//print(Date.timeIntervalSinceReferenceDate - startTime)
