/* Question:
 Return the value of prefix function for a given string.
 Prefix function:
 Given a string S of length n, prefix function produces an array P where for each i > 0, P[i] is the length of the longest substring ending with S[i] which is also a prefix of S, i.e. the maximal k such that S[j] = S[i - k + j + 1] for all 0 ≤ j < k. P[0] by definition equals to 0.
 
 Example:
 For s = "acacbab", the output should be
 prefixFunctionNaive(s) = [0, 0, 1, 2, 0, 1, 0].
 
 Input/Output
 
 [execution time limit] 20 seconds (swift)
 
 [input] string s
 
 A string of lowercase English letters.
 
 Guaranteed constraints:
 5 ≤ s.length ≤ 10.
 
 [output] array.integer
 
 Example:
 Input: aaaaaaba
 Output: [0, 1, 2, 3, 4, 5, 0, 1]
 */
func prefixFunctionNaive(s: String) -> [Int] {
    
}

