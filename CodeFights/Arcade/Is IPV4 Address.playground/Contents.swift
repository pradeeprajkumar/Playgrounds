import Foundation

func isIPv4Address(inputString: String) -> Bool {
    let components = inputString.components(separatedBy: ".")
    
    if components.count != 4 {
        return false
    }
    
    for index in 0..<components.count {
        if let value = Int(components[index]) {
            if value < 0 || value > 255 {
                return false
            }
        } else {
            return false
        }
    }
    return true
}

print(isIPv4Address(inputString: "1.0.255.255"))
