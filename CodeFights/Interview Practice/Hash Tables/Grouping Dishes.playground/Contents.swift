import Foundation
func groupingDishes(dishes: [[String]]) -> [[String]] {
    var ingredientDictionary: [String: [String]] = [:]
    var resultArray: [[String]] = []
    dishes.map { value in
        value[1...].map {
            ingredientDictionary[$0] = ingredientDictionary[$0] != nil ? ingredientDictionary[$0]! + [value.first!] : [value.first!]
        }
    }
    let newDictionary = ingredientDictionary.filter {
        $0.value.count > 1
        }.mapValues {
            $0.sorted()
    }
    newDictionary.keys.sorted(){ $0.compare($1) == .orderedAscending }.map {
        resultArray.append([$0] + newDictionary[$0]!)
    }
    return resultArray
}

print(groupingDishes(dishes: [["Pasta", "Tomato Sauce", "Onions", "Garlic"],
                              ["Chicken Curry", "Chicken", "Curry Sauce"],
                              ["Fried Rice", "Rice", "Onions", "Nuts"],
                              ["Salad", "Spinach", "Nuts"],
                              ["Sandwich", "Cheese", "Bread"],
                              ["Quesadilla", "Chicken", "Cheese"]]))


//Swift in Linux sorting issue.
let dishesArray: [String] = ["AQglifKDgZIivthzfoWRklaKs", "dLuvsltPzUjfXkynBCMgxBUTXhVCd", "GrWhROgzHXhYguurdcGjNAv"]
//print(dishesArray.sorted())
