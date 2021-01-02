/*
 Question - Palindrome Permutation
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3588/
 */

class Solution {
  func canPermutePalindrome(_ s: String) -> Bool {
    if(s.isEmpty) {
      return true
    }
    var dict = [Character:Int]()
    for i in s {
      if let entry = dict[i] {
        dict[i] = nil
      }
      else {
        dict[i] = 1
      }
    }
    if (dict.count == 1 || dict.count == 0) {
      return true
    }
    return false
  }
}
