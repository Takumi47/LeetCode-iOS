//
//  Trie336.swift
//  LeetCode
//
//  Created by xander on 2022/2/3.
//

import Foundation

class TrieNode336 {
    var index = -1
    var children: [Character: TrieNode336] = [:]
    var palindromeIndexes: [Int] = []
}

class Trie336 {
    private var root: TrieNode336?
    
    init() {
        root = TrieNode336()
    }
    
    func insert(_ word: [Character], _ idx: Int) {
        var node = root
        for (i, c) in word.enumerated().reversed() {
            guard let n = node else { break }
            
            if n.children[c] == nil {
                n.children[c] = TrieNode336()
            }
            
            if isPalindrome(word, 0, i) {
                n.palindromeIndexes.append(idx)
            }
            
            node = n.children[c]
        }
        node?.index = idx
        node?.palindromeIndexes.append(idx)
    }
    
    func searchPairs(_ word: [Character], _ idx: Int, _ res: inout [[Int]]) {
        var node = root
        for (i, c) in word.enumerated() {
            guard let n = node else { return }
            
            if n.index >= 0, n.index != idx, isPalindrome(word, i, word.count - 1) {
                res.append([idx, n.index])
            }

            node = n.children[c]
        }
        node?.palindromeIndexes.forEach { i in
            if idx != i { res.append([idx, i]) }
        }
    }
    
    private func isPalindrome(_ word: [Character], _ i: Int, _ j: Int) -> Bool {
        var i = i
        var j = j
        while i < j {
            guard word[i] == word[j] else { return false }
            i += 1
            j -= 1
        }
        return true
    }
}
