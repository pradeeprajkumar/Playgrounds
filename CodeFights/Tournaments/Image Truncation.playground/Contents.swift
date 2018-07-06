func imageTruncation(image: [[Int]], threshold: Int) -> [[Int]] {
    return image.map({ (row) -> [Int] in
        row.map({ (value) -> Int in
            return value < threshold ? value : threshold
        })
    })
}

print(imageTruncation(image: [[0, 100, 100], [1, 255, 103]], threshold: 102))
