/*
 Question - Boats to Save People
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3602/
 */

class Solution {
  func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    let sorted = people.sorted()
    let count = sorted.count
    
    var result = 0
    var left = 0, right = count - 1
    while left <= right {
      if sorted[left] + sorted[right] <= limit {
        left += 1
      }
      right -= 1
      result += 1
    }
    
    return result
  }
}
