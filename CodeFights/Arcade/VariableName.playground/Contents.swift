import Foundation

extension String {
    func isValidName() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        //"[a-zA-Z]+[0-9_]*"
        let regex = try! NSRegularExpression(pattern: "^([a-zA-Z]|_)([a-zA-Z0-9]|\\_)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}
/*
func variableName(name: String) -> Bool {
    return name.range(of: "^([a-zA-Z]|_)([a-zA-Z0-9]|\\_)*$", options: .regularExpression, range: nil, locale: nil) != nil
}
*/

func variableName(name: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "^([a-zA-Z_])([a-zA-Z0-9_])*$", options: .caseInsensitive)
    if regex.firstMatch(in: name, options: [], range: NSRange(location: 0, length: name.count)) != nil {
        return true
    }
    else {
        return false
    }
}

/*
func variableName(name: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "[a-zA-Z]+[0-9_]*", options: .caseInsensitive)
    if let result = regex.firstMatch(in: name, options: [], range: NSRange(location: 0, length: name.count)) {
        print(result)
        return true
    }
    return false
}
*/

/*
extension String {
    func isValidVarName() -> Bool {
        let pattern = "[a-zA-Z]+[0-9_]*"
        let nameValidator = NSPredicate(format: "SELF MATCHES %@", argumentArray: [pattern])
        return nameValidator.evaluate(with: self)
    }
}

func variableName(name: String) -> Bool {
    return name.isValidVarName()
}
*/



print(variableName(name: "_a_riable_"))
