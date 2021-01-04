/*
 Question - Beautiful Arrangement
 Link - > https://leetcode.com/explore/challenge/card/january-leetcoding-challenge-2021/579/week-1-january-1st-january-7th/3591/
 */

class Solution {
  func countArrangement(_ N: Int) -> Int {
    if N == 0 {
      return 0
    }
    
    var visited = [Bool](repeatElement(false, count: N + 1))
    var result = 0
    
    backtracking(N, 1, &visited, &result)
    
    return result
  }
  
  private func backtracking(_ N: Int, _ pos: Int, _ visited: inout [Bool], _ result: inout Int) {
    if pos > N {
      result += 1
      return
    }
    
    for i in 1...N {
      if !visited[i] && (i % pos == 0 || pos % i == 0) {
        visited[i] = true
        backtracking(N, pos + 1, &visited, &result)
        visited[i] = false
      }
    }
  }
}
