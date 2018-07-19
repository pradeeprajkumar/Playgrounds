func isoscelesTriangle(sides: [Int]) -> Bool {
    return sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
}
print(isoscelesTriangle(sides: [5, 3, 5]))
