/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let first = ListNode(0)
        first.next = head
        var current = first

        while let nextNode = current.next {
            if nextNode.val == val {
                current.next = nextNode.next
            } else {
                current = nextNode
            }
        }

        return first.next
    }
}