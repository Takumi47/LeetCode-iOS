//
//  Trie425.swift
//  LeetCode
//
//  Created by xander on 2022/2/5.
//

import Foundation

class TrieNode425 {
    var isWord = false
    var children: [TrieNode425?] = Array(repeating: nil, count: 26)
    var words: [[Character]] = []
}

class Trie425 {
    private var root: TrieNode425?
    
    init() {
        root = TrieNode425()
    }
    
    func insert(_ word: String) {
        let chars = Array(word)
        var node = root
        for c in chars {
            guard let n = node else { break }
            let idx = index(of: c)
            if n.children[idx] == nil {
                n.children[idx] = TrieNode425()
            }
            node = n.children[idx]
            node?.words.append(chars)
        }
        node?.isWord = true
    }
    
    func search(_ prefix: String) -> [[Character]] {
        var node = root
        for c in prefix {
            guard let n = node else { return [] }
            let idx = index(of: c)
            node = n.children[idx]
        }
        return node?.words ?? []
    }
    
    private func index(of c: Character) -> Int {
        Int(c.asciiValue! - Character("a").asciiValue!)
    }
}
