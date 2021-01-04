/*
 Question - Merge Two Sorted Lists
 Link - > https://leetcode.com/explore/challenge/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3592/
 */

class Solution {
  func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l1 = l1 else { return l2 }
    guard let l2 = l2 else { return l1 }
    var outputNode: ListNode? = nil
    
    if l1.val <= l2.val{
      outputNode = l1
      outputNode!.next = mergeTwoLists(l1.next, l2)
    }else{
      outputNode = l2
      outputNode!.next = mergeTwoLists(l1, l2.next)
    }
    return outputNode
  }
}
