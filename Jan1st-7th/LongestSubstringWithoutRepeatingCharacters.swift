/*
 Question - Longest Substring Without Repeating Characters
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3595/
 */

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int{
    var maxLength = 0, startIndex = 0, characterToDictionary: [Character: Int] = [:]
    let sArray = Array(s)
    for (endIndex, value) in sArray.enumerated(){
      if let position = characterToDictionary[value]{
        startIndex = max(startIndex, position)
      }
      characterToDictionary[value] = endIndex + 1
      maxLength = max(maxLength, endIndex - startIndex + 1)
    }
    return maxLength
  }
}
