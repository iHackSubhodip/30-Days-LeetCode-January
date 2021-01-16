/*
 Question - Get Maximum in Generated Array
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/581/week-3-january-15th-january-21st/3605/
 */

class Solution {
  func getMaximumGenerated(_ n: Int) -> Int {
    var nums = [Int](repeating: 0, count: n + 1)
    if n >= 1 { nums[1] = 1 }
    for i in stride(from: 2, through: n, by: 1) {
      if i % 2 == 0 {
        nums[i] = nums[i / 2]
      } else {
        nums[i] = nums[i / 2] + nums[i / 2 + 1]
      }
    }
    return nums.max()!
  }
}
