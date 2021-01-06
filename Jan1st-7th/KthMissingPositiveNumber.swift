/*
 Question - Kth Missing Positive Number
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3594/
 */

class Solution {
  func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var last = 0, remainder = k
    for item in arr {
      let diff = item - last - 1
      if diff >= remainder { break }
      remainder -= diff
      last = item
    }
    return last + remainder
  }
}
