func groupingDishes(dishes: [[String]]) -> [[String]] {
    var ingredientDictionary: [String: [String]] = [:]
    var resultArray: [[String]] = []
    for row in dishes {
        for ingredient in row[1..<row.count] {
            if ingredientDictionary[ingredient] != nil {
                ingredientDictionary[ingredient] = ingredientDictionary[ingredient]! + [row.first!]
            } else {
                ingredientDictionary[ingredient] = [row.first!]
            }
        }
    }
    let newDictionary = ingredientDictionary.filter {
        $0.value.count > 1
        }.mapValues {
            $0.sorted()
    }
    for key in newDictionary.keys.sorted() {
        let row = [key] + newDictionary[key]!
        resultArray.append(row)
    }
    return resultArray
}

print(groupingDishes(dishes: [["Pasta", "Tomato Sauce", "Onions", "Garlic"],
                              ["Chicken Curry", "Chicken", "Curry Sauce"],
                              ["Fried Rice", "Rice", "Onions", "Nuts"],
                              ["Salad", "Spinach", "Nuts"],
                              ["Sandwich", "Cheese", "Bread"],
                              ["Quesadilla", "Chicken", "Cheese"]]))
