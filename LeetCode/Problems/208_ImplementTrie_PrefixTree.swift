//
//  208_ImplementTrie_PrefixTree.swift
//  LeetCode
//
//  Created by xander on 2021/10/10.
//

import Foundation

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */

class Trie208 {

    private class Node208 {
        var isWord = false
        var children: [Node208?] = Array(repeating: nil, count: 26)
    }

    private var root: Node208?
    
    init() {
        root = Node208()
    }
    
    func insert(_ word: String) {
        var node = root
        for c in word {
            let index = index(of: c)
            if node?.children[index] == nil {
                node?.children[index] = Node208()
            }
            node = node?.children[index]
        }
        node?.isWord = true
    }
    
    func search(_ word: String) -> Bool {
        guard let node = find(word) else { return false }
        return node.isWord
    }
    
    func startsWith(_ prefix: String) -> Bool {
        find(prefix) != nil
    }
    
    private func index(of c: Character) -> Int {
        Int(c.asciiValue! - Character("a").asciiValue!)
    }
    
    private func find(_ prefix: String) -> Node208? {
        var node = root
        for c in prefix {
            guard let child = node else { break }
            let index = index(of: c)
            node = child.children[index]
        }
        return node
    }
}
