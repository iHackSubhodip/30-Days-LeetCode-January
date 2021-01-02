/*
 Question - Check Array Formation Through Concatenation
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3589/
 */

class Solution {
  func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
    var dict : [Int:Int] = [:]
    for i in 0..<pieces.count{
      dict[pieces[i][0]] = i
    }
    var i = 0
    while i < arr.count{
      if dict[arr[i]] == nil{
        return false
      }
      let a = pieces[dict[arr[i]]!]
      for j in 0..<a.count{
        if arr[i] != a[j]{
          return false
        }
        i += 1
      }
    }
    return true
  }
}
