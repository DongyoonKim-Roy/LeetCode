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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var resNode : ListNode? = ListNode(0)
        resNode!.next = head
        var pastNode : ListNode? = helperFunc(resNode, n)
        
        pastNode!.next = pastNode!.next!.next
        return resNode!.next
    }
    func helperFunc(_ head: ListNode?, _ n: Int)-> ListNode?{
        var pastNode : ListNode? = head
        var postNode : ListNode? = head
        
        for i in 0..<n{
            postNode = postNode!.next
        }
        
        while postNode!.next != nil{
            postNode = postNode!.next
            pastNode = pastNode!.next
        }
        return pastNode
    }
    
}
