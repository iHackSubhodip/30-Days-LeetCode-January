/*
 Question - Nested List Weight Sum
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/581/week-3-january-15th-january-21st/3604/
 */

class Solution {
  func depthSum(_ nestedList: [NestedInteger]) -> Int {
    return helperDepthSum(nestedList, 1)
  }
  
  func helperDepthSum(_ nestedList: [NestedInteger],_ level: Int) -> Int{
    var result = 0
    for list in nestedList{
      if list.isInteger(){
        result += list.getInteger() * level
      }else{
        result += helperDepthSum(list.getList(), level + 1)
      }
    }
    return result
  }
}
