//: Playground - noun: a place where people can play

import Foundation

//Via getter modification
print("\nGetter===========================================\n")
var index: Int? {
    get {
        print("Reading this property is not allowed")
        return nil
    }
    set {
        print("Setting value: \(newValue!)")
    }
}

index = 3
print(index)

print("\nClass===========================================\n")
//Via Inheritance
public class MyClass {
    private var indexInt: Int!
    final func configureIndex(newValue: Int) -> Int {
        self.indexInt = newValue
        return self.indexInt
    }
}
var myClass = MyClass()
print("Newly set value(in parent class object): \(myClass.configureIndex(newValue: 5))")
//Reading the value is not allowed
//print(myClass.index)

public class MySecondClass: MyClass {
    func modifyValue() {
        print("Newly set value(in sub class method):\(configureIndex(newValue: 10))")
        //Reading the value is not allowed
        //print(indexInt)
    }
}

var mySecondClass = MySecondClass()
mySecondClass.modifyValue()
print("Newly set value(in sub class object): \(mySecondClass.configureIndex(newValue: 15))")
//Reading the value is not allowed
//print(mySecondClass.index)
