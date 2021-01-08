/*
 Question - Check If Two String Arrays are Equivalent
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3597/
 */

class Solution {
  func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    return word1.reduce("", {$0 +  $1}) == word2.reduce("", {$0 +  $1})
  }
}
