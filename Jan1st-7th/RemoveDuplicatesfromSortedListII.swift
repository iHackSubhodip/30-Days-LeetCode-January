/*
 Question - Remove Duplicates from Sorted List II
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3593/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
  func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var temp = ListNode(0)
    var slow: ListNode? = temp, fast = head
    while slow != nil {
      if fast != nil && fast!.val == fast!.next?.val {
        while fast!.val == fast!.next?.val {
          fast = fast!.next
        }
        fast = fast?.next
        
      } else {
        slow!.next = fast
        slow = slow?.next
        fast = fast?.next
      }
    }
    return temp.next
  }
}
