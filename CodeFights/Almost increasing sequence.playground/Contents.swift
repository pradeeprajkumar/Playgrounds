//: Playground - noun: a place where people can play
import Foundation

func almostIncreasingSequence(sequence: [Int]) -> Bool {
    
    var availableRemovals = 1
    
    //If two or less number of items are present, we can always remove one number and have the other as the increasing sequence
    if sequence.count < 3 {
        return true
    }
    
    var prevGreaterThanNext = false
    //If there are 3 or more elements, control comes here
    for index in 1..<sequence.count {
        let curr = sequence[index]
        if let prev = index-1 >= 0 ? sequence[index-1]: nil {
            if let next = index+1 < sequence.count ? sequence[index+1]: nil {
                //This number is in between initial value and last value
                if prev < curr && curr < next && prev < next {
                    //Sequence is in Right order
                } else {
                    if prev < curr {
                        //Means curr is greater than next
                        if prev < next {
                            //We can remove the current element and have it in Right order
                            if availableRemovals <= 0 {
                                //We don't have any more removals
                                return false
                            }
                            availableRemovals -= 1
                        }
                        else {
                            if prevGreaterThanNext == true {
                                return false
                            }
                            prevGreaterThanNext = true
                        }
                    }
                    else if curr < next {
                        //Means prev is greater than curr
                        if prev < next {
                            //We can remove the current element and have it in Right order
                            if availableRemovals <= 0 {
                                //We don't have any more removals
                                return false
                            }
                            availableRemovals -= 1
                        }
                        else {
                            if prevGreaterThanNext == true {
                                return false
                            } else {
                                print(prev, curr, next)
                                prevGreaterThanNext = true
                                /*
                                 if availableRemovals <= 0 {
                                 //We don't have any more removals
                                 return false
                                 }
                                 availableRemovals -= 1
                                 */
                            }
                        }
                    }
                    else {
                        //This means Prev > Curr > next
                        return false
                    }
                }
                
            } else {
                //This is the last item, as there is no next item
                if prev < curr { //Sequence is in Right order
                    
                }
                else {
                    if sequence[index-2] < prev {
                        return true
                    }
                    if availableRemovals <= 0 {
                        return false
                    }
                }
            }
        }
    }
    //If the code reaches here, then it means, there is only one or less than one wrong values present
    return true
}

print(almostIncreasingSequence(sequence: [1,20,40,3]))
//[1, 1, 1, 2, 3]
//[3, 5, 67, 98, 3]

//[1, 2, 3, 4, 5, 3, 5, 6]
//[1, 2, 3, 3, 4, 5, 5, 6]

//[1, 3, 2, 1]
//[1, 1, 2, 3]

//[1, 3, 2]
//[1, 2, 5, 3, 5]

//false
//[10, 1, 2, 3, 4, 5, 6, 1]
//[1, 3, 2]
//true

//false
//[5384, 12, 34, 54, 48]
