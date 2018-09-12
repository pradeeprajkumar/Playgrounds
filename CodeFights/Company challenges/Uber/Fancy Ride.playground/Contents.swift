func fancyRide(l: Int, fares: [Double]) -> String {
    
    var cars = ["UberX", "UberXL", "UberPlus", "UberBlack", "UberSUV"]
    let amount = 20
    var bestIndex: Int?
    var bestFare: Double! = 0.0
    
    for (index, value) in fares.enumerated() {
        let currFare = value * Double(l)
        if currFare <= Double(amount) {
            if currFare > bestFare {
                bestFare = currFare
                bestIndex = index
            }
        }
    }
    guard bestIndex != nil && bestIndex! < cars.count else {
        return ""
    }
    return cars[bestIndex!]
}

debugPrint(fancyRide(l: 30, fares: [0.3, 0.5, 0.7, 1, 1.3]))
