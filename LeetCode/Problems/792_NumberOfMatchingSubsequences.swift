//
//  792_NumberOfMatchingSubsequences.swift
//  LeetCode
//
//  Created by xander on 2021/6/22.
//

import Foundation

class Xoo792 {
    func numMatchingSubseq(_ s: String, _ words: [String]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo792_1 {
    func numMatchingSubseq(_ s: String, _ words: [String]) -> Int {
        var ans = 0
        for word in words {
            if isSubseq(s, word) { ans += 1 }
        }
        return ans
    }
    
    private func isSubseq(_ s: String, _ word: String) -> Bool {
        var i = 0
        for c in s {
            if i < word.count && word[i] == "\(c)" { i += 1 }
        }
        return i == word.count
    }
}

// MARK: - 2. Next Letter Pointers

class Xoo792_2 {
    class Node {
        var index: Int
        let word: String
        
        init(_ index: Int, _ word: String) {
            self.index = index
            self.word = word
        }
    }
    
    func numMatchingSubseq(_ s: String, _ words: [String]) -> Int {
        var ans = 0
        var heads: [[Node]] = Array(repeating: [], count: 26)
        
        for word in words {
            let i = Int(Character(word[0]).asciiValue! - Character("a").asciiValue!)
            heads[i].append(Node(0, word))
        }
        
        for c in s {
            let i = Int(c.asciiValue! - Character("a").asciiValue!)
            let old_bucket = heads[i]
            heads[i] = []
            
            for node in old_bucket {
                node.index += 1
                if node.index == node.word.count {
                    ans += 1
                } else {
                    let j = Int(Character(node.word[node.index]).asciiValue! - Character("a").asciiValue!)
                    heads[j].append(node)
                }
            }
            //old_bucket.removeAll()
        }
        
        return ans
    }
}
