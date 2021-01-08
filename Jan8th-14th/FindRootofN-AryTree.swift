/*
 Question - Find Root of N-Ary Tree
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3596/
 */

public class Node {
  public var val: Int
  public var children: [Node]
  public init(_ val: Int) {
    self.val = val
    self.children = []
  }
}


class Solution {
  func findRoot(_ tree: [Node]) -> Node? {
    if tree.isEmpty {
      return nil
    }
    if tree.count == 1 {
      return tree[0]
    }
    var sum = 0
    
    for element in tree {
      sum += element.val
      for child in element.children {
        sum -= child.val
      }
    }
    
    for element in tree {
      if sum == element.val {
        return element
      }
    }
    
    return nil
  }
}
