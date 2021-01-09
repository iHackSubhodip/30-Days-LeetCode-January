/*
 Question - Word Ladder
 Link - > https://leetcode.com/explore/featured/card/january-leetcoding-challenge-2021/580/week-2-january-8th-january-14th/3598/
 */

class Solution {
  func ladderLength(_ beginWord: String,_ endWord: String,_ wordList: [String]) -> Int{
    guard beginWord.count == endWord.count else { return 0 }
    var queue = [(beginWord, 1)], wordSet = Set<String>(wordList)
    
    while !queue.isEmpty{
      let (word, step) = queue.removeFirst()
      if word == endWord { return step }
      
      for i in 0..<word.count{
        var wordArray = Array(word)
        
        for char in "abcdefghijklmnopqrstuvwxyz"{
          guard char != wordArray[i] else { continue }
          wordArray[i] = char
          let transformedWord = String(wordArray)
          guard wordSet.contains(transformedWord) else { continue }
          wordSet.remove(transformedWord)
          queue.append((transformedWord, step + 1))
        }
      }
    }
    return 0
  }
}
