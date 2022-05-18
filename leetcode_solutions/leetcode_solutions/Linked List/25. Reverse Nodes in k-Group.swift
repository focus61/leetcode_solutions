/*
 Hard
 
 Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.
 
 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.
 
 You may not alter the values in the list's nodes, only nodes themselves may be changed.
 
 Input: head = [1,2,3,4,5], k = 2
 Output: [2,1,4,3,5]
 
 Input: head = [1,2,3,4,5], k = 3
 Output: [3,2,1,4,5]
 
 */
class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var prev = head
        for _ in 0..<k - 1 {
            prev = prev?.next
        }
        if prev == nil {
            return head
        }
        var cur: ListNode?
        var next: ListNode?
        for _ in 0..<k {
            if cur == nil {
                cur = head?.next
                head?.next = reverseKGroup(prev?.next, k)
                prev = head
            } else {
                next = cur?.next
                cur?.next = prev
                prev = cur
                cur = next
            }
        }
        return prev
    }
}
