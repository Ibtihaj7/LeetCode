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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2, prev = ListNode(0), carry = 0
        let head = prev

        while l1 != nil || l2 != nil || carry != 0 {
            let current = ListNode(0)
            let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            current.val = sum % 10
            carry = sum / 10
            prev.next = current
            prev = current
            l1 = l1?.next
            l2 = l2?.next
        }

        return head.next
    }

}