//
//  WordTrie.swift
//  LeetCode
//
//  Created by xander on 2022/1/29.
//

import Foundation

class WordTrie {
    
    // MARK: - Properties
    
    private var root: WordNode?
    
    // MARK: - Lifecycle
    
    init() {
        root = WordNode()
    }

    // MARK: - Methods
    
    func insert(_ word: String) {
        var node = root
        for c in word {
            guard let n = node else { break }
            let index = index(of: c)
            if n.children[index] == nil {
                n.children[index] = WordNode()
            }
            node = n.children[index]
            node?.count += 1 // ⭐️⭐️⭐️ #212. Word Search II
        }
        node?.isWord = true
    }
    
    func search(_ word: String) -> Bool {
        guard let node = find(word) else { return false }
        return node.isWord
    }
    
    func startWith(_ prefix: String) -> Bool {
        find(prefix) != nil
    }
    
    // MARK: - Private Implementation
    
    private func index(of c: Character) -> Int {
        Int(c.asciiValue! - Character("a").asciiValue!)
    }
    
    private func find(_ prefix: String) -> WordNode? {
        var node = root
        for c in prefix {
            guard let n = node else { break }
            let index = index(of: c)
            node = n.children[index]
        }
        return node
    }

}

// MARK: - 648. Replace Words

extension WordTrie {
    func findRoot(_ word: String) -> String? {
        var res: String?
        var node = root
        for c in word {
            let index = index(of: c)
            guard let n = node?.children[index] else { break }
            res = (res ?? "") + "\(c)"
            node = n
            if node?.isWord ?? false { break } // find the shortest root
        }
        return node?.isWord ?? false ? res : nil
    }
}

// MARK: - 212. Word Search II

extension WordTrie {
    var wRoot: WordNode? { root }
    
    func remove(_ word: String) {
        var node = root
        for c in word {
            guard let n = node else { break }
            let index = index(of: c)
            node = n.children[index]
            node?.count -= 1
        }
        node?.isWord = false
    }
}
