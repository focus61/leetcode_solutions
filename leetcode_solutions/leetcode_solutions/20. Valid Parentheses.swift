/*
 Easy
 
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 
 Example 1:
 Input: s = "()"
 Output: true
 
 Example 2:
 Input: s = "()[]{}"
 Output: true
 
 Example 3:
 Input: s = "(]"
 Output: false
 
 time O(n)
 memory O(n)
 */
class Solution {
    let charMap: [Character: Character] = [
        "}" : "{",
        ")" : "(",
        "]" : "["
    ]
    func isValid(_ s: String) -> Bool {
        var  stack = [Character] ()
        for i in s {
            let c = charMap[i]
            if c == nil {
                stack.append(i)
            } else {
                if stack.popLast() != c {
                    return false
                }
            }
        }
        return stack.count == 0
    }
}

