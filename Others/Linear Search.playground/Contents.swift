//: Playground - noun: a place where people can play

func linearSearch<T: Equatable>(array: [T], object: T) -> [Int] {
    let resultArray = array.indices.filter { (index) -> Bool in
        array[index] == object
    }
    return resultArray
}

print(linearSearch(array: [1.0,2.0,3.0,4,5,3,4], object: 3.0))
