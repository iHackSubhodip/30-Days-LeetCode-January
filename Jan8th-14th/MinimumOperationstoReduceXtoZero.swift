/*
 Question - Minimum Operations to Reduce X to Zero
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3603/
 */

class Solution {
  func minOperations(_ nums: [Int], _ x: Int) -> Int {
    let c = nums.count
    var leftSums = [0: 0], leftSum = 0
    for left in 0..<c {
      leftSum += nums[left]
      if let leftSum = leftSums[leftSum] {
        continue
      } else {
        leftSums[leftSum] = left + 1
      }
    }
    var result = leftSums[x, default: Int.max], rightSum = 0
    for right in stride(from: c - 1, through: 0, by: -1) {
      rightSum += nums[right]
      if let left = leftSums[x - rightSum], right >= left {
        result = min(result, left + (c - right))
      }
    }
    return result == Int.max ? -1 : result
  }
}
