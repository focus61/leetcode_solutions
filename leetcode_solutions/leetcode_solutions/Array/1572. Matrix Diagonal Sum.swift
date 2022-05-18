/*
 Easy
 
 Given a square matrix mat, return the sum of the matrix diagonals.

 Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.
 Example 1:
 Input: mat = [[1,2,3],
               [4,5,6],
               [7,8,9]]
 Output: 25
 Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
 Notice that element mat[1][1] = 5 is counted only once.
 
 Example 2:
 Input: mat = [[1,1,1,1],
               [1,1,1,1],
               [1,1,1,1],
               [1,1,1,1]]
 Output: 8
 
 Example 3:
 Input: mat = [[5]]
 Output: 5
 
 time  79ms (98%) , memory 14.2 (58%)
 */

class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var sum = 0
        var indeces = 0
        if mat.count % 2 == 0 {
            for i in mat {
                for j in 0..<i.count {
                    sum += i[indeces] + i[i.count - 1 - indeces]
                    break
                }
                indeces += 1
            }
            
        } else {
            for i in mat {
                for j in 0..<i.count {
                    if indeces == i.count / 2{
                        sum += i[indeces]
                        break
                    }
                    sum += i[indeces] + i[i.count - 1 - indeces]
                    break
                }
                indeces += 1
            }
        }
        return sum
    }
}
