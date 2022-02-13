//
//  127_WordLadder.swift
//  LeetCode
//
//  Created by xander on 2021/7/25.
//

import Foundation

class Xoo127 {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var dict = Set(wordList)
        guard dict.contains(endWord) else { return 0 }
        
        var queue = Queue<String>()
        queue.enqueue(beginWord)
        
        let L = beginWord.count
        var step = 0
        while !queue.isEmpty {
            step += 1
            
            for _ in 0..<queue.count {
                guard let word = queue.dequeue() else { continue }
                
                var wordArray = Array(word)
                for i in 0..<L {
                    let char = wordArray[i]
                    for alphabet in "abcdefghijklmnopqrstuvwxyz" {
                        wordArray[i] = alphabet
                        let newWord = String(wordArray)
                        if newWord == endWord { return step + 1 }
                        guard dict.contains(newWord) else { continue }
                        dict.remove(newWord)
                        queue.enqueue(newWord)
                    }
                    wordArray[i] = char
                }
            }
        }
        return 0
    }
}

class Xoo127_A {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var wordSet = Set(wordList)
        var queue = Queue<String>()
        queue.enqueue(beginWord)
        
        var level = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let word = queue.dequeue() else { continue }
                if word == endWord { return level + 1 } // ⭐️⭐️⭐️
                var wordUnit = Array(word)
                
                for i in 0..<word.count {
                    let char = wordUnit[i]
                    for alphabet in "abcdefghijklmnopqrstuvwxyz" {
                        wordUnit[i] = alphabet
                        let newWord = String(wordUnit)
                        if wordSet.contains(newWord) {
                            wordSet.remove(newWord)
                            queue.enqueue(newWord)
                        }
                    }
                    wordUnit[i] = char
                }
            }
            level += 1 // ⭐️⭐️⭐️
        }
        return 0
    }
}

class Xoo127_B {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var wordSet = Set(wordList)
        guard wordSet.contains(endWord) else { return 0 }
        
        var s1: Set<String> = [beginWord]
        var s2: Set<String> = [endWord]
        
        var level = 0
        while !s1.isEmpty && !s2.isEmpty {
            level += 1 // ⭐️⭐️⭐️
            if s1.count > s2.count {
                swap(&s1, &s2)
            }
            
            var s: Set<String> = []
            for word in s1 {
                var chars = Array(word)
                for (i, c) in chars.enumerated() {
                    for alpha in "abcdefghijklmnopqrstuvwxyz" {
                        chars[i] = alpha
                        let nextWord = String(chars)
                        if s2.contains(nextWord) { return level + 1 } // ⭐️⭐️⭐️
                        if wordSet.contains(nextWord) {
                            wordSet.remove(nextWord)
                            s.insert(nextWord)
                        }
                    }
                    chars[i] = c
                }
            }
            s1 = s
        }
        return 0
    }
}

// MARK: - 1. BFS

class Xoo127_1 {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        0
    }
}

// MARK: - 2. Bidirectional BFS

class Xoo127_2 {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        0
    }
}
