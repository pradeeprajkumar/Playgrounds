protocol MyStringConvertible {
//    var description: String { get }
}

extension MyStringConvertible {
    var description: String {
        print("My protocol extension function")
        return "My convertible"
    }
}


protocol MyStringConvertible2 {
    //    var description: String { get }
}

extension MyStringConvertible2 {
    var description: String {
        print("My protocol extension 2 function")
        return "My convertible 2"
    }
}

struct C: MyStringConvertible, MyStringConvertible2 {
//    var description: String
//    func printDescription() {
//        print(description)
//        print(description)
//    }
}

var structValue = C()
structValue.description
