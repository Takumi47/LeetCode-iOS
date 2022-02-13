//
//  211_DesignAddAndSearchWordsDataStructure.swift
//  LeetCode
//
//  Created by xander on 2022/1/29.
//

import Foundation

class WordDictionary {

    private var dict: [Int: Set<String>] = [:]
    
    init() {}
    
    func addWord(_ word: String) {
        let m = word.count
        dict[m, default: []].insert(word)
    }
    
    func search(_ word: String) -> Bool {
        let m = word.count
        guard let words = dict[m] else { return false }
        for w in words {
            if compare(w, word) { return true }
        }
        return false
    }
    
    private func compare(_ word: String, _ target: String) -> Bool {
        let n = target.count
        let w = Array(word)
        let t = Array(target)
        for i in 0..<n {
            guard t[i] == "." || w[i] == t[i] else { return false }
        }
        return true
    }
}

// MARK: - 1. Trie

class WordDictionary_1 {

    private var root: WTrieNode?
    
    init() {
        root = WTrieNode()
    }
    
    func addWord(_ word: String) {
        var node = root
        for c in word {
            guard let n = node else { break }
            if n.children[c] == nil {
                n.children[c] = WTrieNode()
            }
            node = n.children[c]
        }
        node?.isWord = true
    }
    
    func search(_ word: String) -> Bool {
        let word = Array(word)
        return searchInNode(word, 0, root)
    }
    
    private func searchInNode(_ word: [Character], _ i: Int, _ node: WTrieNode?) -> Bool {
        guard i < word.count else { return node?.isWord ?? false }
        guard let node = node else { return false }
        
        if word[i] == "." {
            for n in node.children.values {
                if searchInNode(word, i + 1, n) {
                    return true
                }
            }
            return false
        } else if let child = node.children[word[i]] {
            return searchInNode(word, i + 1, child)
        } else {
            return false
        }
    }
}

class WTrieNode {
    var isWord = false
    var children: [Character: WTrieNode] = [:]
}
