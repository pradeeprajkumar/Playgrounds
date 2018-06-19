class Person {
    var name: String
    var age: Int = 50
    init(name: String, _ age: Int? = 40) {
        self.name = name
        self.age = age!
    }
}
extension Person {
    convenience init() {
        self.init(name: "Pradeep")
    }
}

var objj = Person()
print(objj.name, objj.age)

/*

 // _ means, function caller should not include the parameter label
//Default bool value
func myFunc(name: String, _ age: Int, _ isAwesome: Bool = true) {
    print(name, age, isAwesome)
}
myFunc(name: "Pradeep", 12)
myFunc(name: "Raj", 13, false)
myFunc(name: "Kumar", 14)


print((2, 4.5) == (2, 4.5))

class MyClass {
    var age: Int
    init(age: Int) {
        //Can we use self inside init ?
        //What will self be during initialisation ?        
        self.age = age
    }
    func birthday() -> Int {
        return age + 1
    }
}

var obj = MyClass(age: 15)
print(obj.birthday())


let obj1 = MyClass(age: 21)
obj1.age = 22
obj1 = MyClass(age: 24)
print(obj1.age)

struct MyStruct {
    var age: Int
}

let obj2 = MyStruct(age: 26)
obj2.age = 5
print(obj2.age)
*/
