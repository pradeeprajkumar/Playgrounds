
for index in 0...5 where index % 2 != 0 {
    //Prints the odd numbers from 0 to 5 including the last value in the range
    print(index)
}

//For loop with where clause to filter the iteration based on even only condition
for index in 0..<5 where index % 2 == 0 {
    print(index)
}

//Stride by excludes the last element
//Stride by a positive number to iterate the array in increasing order
for index in stride(from: 5, to: 100, by: 5) {
    print(index)
}
//Stride through includes the last element
for index in stride(from: 5, through: 10, by: 1){
    print(index)
}

//Stride by a negative number to iterate the array in decreasing order
for index in stride(from: 12, to: 0, by: -2) {
    print(index)
}
