extension String {
    
    subscript (i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
    
    var count: Int {
        return self.characters.count
    }
    
    func differentByOne(_ s: String) -> Bool {
        var count = 0
        for i in 0..<s.count {
            if self[i] != s[i] {
                count += 1
                
                if count > 1 {
                    return false
                }
            }
        }
        
        return count == 1
    }
}

func stringsRearrangement(inputArray: [String]) -> Bool {
    var inputArray = inputArray
    var resultArray: [String] = []
    
    resultArray.append(inputArray.removeFirst())
    
    while inputArray.count > 0 {
        var index = 0
        var inserted: Bool = false
        
        while index < inputArray.count {
            let newItem = inputArray[index]
            
            print(newItem)
            
            if let resLast = resultArray.last, newItem.differentByOne(resLast) {
                resultArray.append(newItem)
                inputArray.remove(at: index)
                inserted = true
                continue
            } else if let resFirst = resultArray.first, newItem.differentByOne(resFirst) {
                resultArray.insert(newItem, at: 0)
                inputArray.remove(at: index)
                inserted = true
                continue
            } else {
                for i in 0..<resultArray.count - 1 {
                    if newItem.differentByOne(resultArray[i]) && newItem.differentByOne(resultArray[i + 1]) {
                        inserted = true
                        resultArray.insert(newItem, at: i + 1)
                        inputArray.remove(at: index)
                        continue
                    }
                }
            }
            
            index += 1
        }
        
        if inserted == false {
            return false
        }
    }
    
    return inputArray.count == 0
}

print(stringsRearrangement(inputArray: ["ab", "bb", "aa"]))
