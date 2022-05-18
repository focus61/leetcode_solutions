/*
 Easy
 
 In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one with a different size r x c keeping its original data.

 You are given an m x n matrix mat and two integers r and c representing the number of rows and the number of columns of the wanted reshaped matrix.

 The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing order as they were.

 If the reshape operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.

 Example 1:
 Input: mat = [[1,2],[3,4]], r = 1, c = 4
 Output: [[1,2,3,4]]
 
 Example 2:
 Input: mat = [[1,2],[3,4]], r = 2, c = 4
 Output: [[1,2],[3,4]]
 
 time 97 ms, memory 14.5 mb
 */
class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        if c * r != mat.count * mat[0].count {
              return mat
        }
         var res = Array(repeating: Array(repeating: 0,count: c) ,count: r)
          var count = 0
          for i in 0..<mat.count{
              for j in 0..<mat[0].count{
                 res[count / c][count % c] = mat[i][j]
                 count += 1
              }
          }
        return res
    }
}
