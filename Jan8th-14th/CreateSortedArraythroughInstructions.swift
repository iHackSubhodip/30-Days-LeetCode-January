/*
 Question - Create Sorted Array through Instructions
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3599/
 */

class Solution {
  func createSortedArray(_ instructions: [Int]) -> Int {
    let len = 100001
    let fen = Fenwick(len)
    var res = 0
    
    for i in instructions {
      res += min(fen.getSum(1, i - 1), fen.getSum(i + 1, 100000))
      res %= 1000000007
      fen.add(1, i)
      
    }
    
    return res
  }
}

class Fenwick {
  var array: [Int]
  
  init(_ len: Int) {
    self.array = Array(repeating: 0, count: len)
  }
  
  func add(_ val: Int, _ index: Int) {
    var index = index + 1
    while index <= array.count {
      array[index - 1] += val
      index += index & -index
    }
  }
  
  func remove(_ val: Int, _ index: Int) {
    add(-val, index)
  }
  
  func replace(_ val: Int, _ index: Int) {
    let value = getSum(index, index)
    remove(value, index)
    add(val, index)
  }
  
  func getSum(_ left: Int, _ right: Int) -> Int {
    return getSumHelper(right) -  getSumHelper(left - 1)
  }
  
  func getSumHelper(_ index: Int) -> Int {
    var index = index + 1
    var sum = 0
    while index > 0 {
      sum += array[index - 1]
      index -= index & -index
    }
    
    return sum
  }
}
