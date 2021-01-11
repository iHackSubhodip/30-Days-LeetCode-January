/*
 Question - Merge Sorted Array
 Link - > https://leetcode.com/explore/challenge/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3600/
 */

class Solution {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1, j = n - 1
    
    while i >= 0 || j >= 0{
      if j < 0 || (i >= 0 && nums1[i] > nums2[j]){
        nums1[i+j+1] = nums1[i]
        i -= 1
      }else{
        nums1[i+j+1] = nums2[j]
        j -= 1
      }
    }
  }
}
