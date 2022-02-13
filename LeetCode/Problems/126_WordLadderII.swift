//
//  126_WordLadderII.swift
//  LeetCode
//
//  Created by xander on 2021/7/25.
//

import Foundation

class Xoo126 {
    func findLadders(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> [[String]] {
        var wordSet = Set(wordList)
        guard wordSet.contains(endWord) else { return [] }
        wordSet.remove(beginWord)
        wordSet.remove(endWord)
        
        var steps: [String: Int] = [beginWord: 1]
        var parents: [String: [String]] = [:]
        
        var queue = Queue<String>()
        queue.enqueue(beginWord)
        
        var ans: [[String]] = []
        var level = 0
        var found = false
        while !queue.isEmpty && !found {
            level += 1
            
            for _ in 0..<queue.count {
                guard let word = queue.dequeue() else { continue }
                
                var wordUnit = Array(word)
                for i in 0..<word.count {
                    let char = wordUnit[i]
                    for alphabet in "abcdefghijklmnopqrstuvwxyz" where alphabet != char {
                        wordUnit[i] = alphabet
                        let newWord = String(wordUnit)
  
                        if newWord == endWord {
                            parents[newWord, default: []].append(word)
                            found = true
                        } else if let step = steps[newWord], level < step {
                            /* Not a new word, but another transform with the same number of steps */
                            parents[newWord, default: []].append(word)
                        } else if wordSet.contains(newWord) {
                            wordSet.remove(newWord)
                            queue.enqueue(newWord)
                            steps[newWord] = steps[word, default: 0] + 1
                            parents[newWord, default: []].append(word)
                        }
                    }
                    wordUnit[i] = char
                }
            }
        }
        
        if found {
            var curr: [String] = [endWord]
            getPathsDFS(endWord, beginWord, &parents, &curr, &ans)
        }
        
        return ans
    }
    
    private func getPathsDFS(_ end: String, _ begin: String, _ graph: inout [String: [String]], _ curr: inout [String], _ ans: inout [[String]]) {
        if end == begin {
            ans.append(curr.reversed())
            return
        }
        
        for parent in graph[end, default: []] {
            curr.append(parent)
            getPathsDFS(parent, begin, &graph, &curr, &ans)
            curr.removeLast()
        }
    }
}

// MARK: - 1. BFS + Backtracking

class Xoo126_1 {
    func findLadders(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> [[String]] {
        []
    }
}

// MARK: - 2. Bidirectional BFS + Backtracking

class Xoo126_2 {
    func findLadders(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> [[String]] {
        []
    }
}
