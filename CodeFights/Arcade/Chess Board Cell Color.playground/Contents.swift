import Foundation
/*
 * Time complexity: O(1)
 * Space complexity: O(1)
 */
// Unicode value of 1 => 49
// Unicode value of A => 65
//Both are odd
func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
    //Assigning True to Black
    //Assigning False to White
    var cell1Color = false, cell2Color = false
    //Find Cell1 Color
    
    /*
     * Odd + Odd = Even
     * Even + Even = Even
     * Odd + Even = Odd
     * Even + Odd = Odd
     */
    
    if (cell1.unicodeScalars.first!.value + cell1.unicodeScalars.last!.value) % 2 == 0 {
        //its black, if
        //both are odd numbers OR
        //both are even numbers
        cell1Color = true //Black
    }
    //Find Cell2 Color
    if (cell2.unicodeScalars.first!.value + cell2.unicodeScalars.last!.value) % 2 == 0 {
        //its black, if
        //both are odd numbers OR
        //both are even numbers
        cell2Color = true //Black
    }
    return cell1Color == cell2Color
}

print(chessBoardCellColor(cell1: "A1", cell2: "C3"))
