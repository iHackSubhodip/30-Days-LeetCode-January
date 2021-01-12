/*
 Question - Add Two Numbers
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3601/
 */

class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l1 = l1 else { return l2 }
    guard let l2 = l2 else { return l1 }
    
    let outputNode = ListNode((l1.val + l2.val) % 10)
    if l1.val + l2.val > 9{
      outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
    }else{
      outputNode.next = addTwoNumbers(l1.next, l2.next)
    }
    return outputNode
  }
}
