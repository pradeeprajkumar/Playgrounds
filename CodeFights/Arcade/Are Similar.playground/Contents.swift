import Foundation

func areSimilar(a: [Int], b: [Int]) -> Bool {

    if a.count != b.count {
        return false
    }
    
    var diffIndex1: Int?
    var diffIndex2: Int?

    for index in 0..<a.count {
        if a[index] != b[index] {
            if diffIndex1 == nil {
                diffIndex1 = index
            } else if diffIndex2 == nil {
                diffIndex2 = index
                if a[diffIndex1!] != b[diffIndex2!] || a[diffIndex2!] != b[diffIndex1!] {
                    //After swapping not matching
                    return false
                }
            } else { //More than two mis match found
                return false
            }
        }
    }
    return true
}


print(areSimilar(a: [1, 2, 2], b: [2, 1, 1]))
