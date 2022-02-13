//
//  648_ReplaceWords.swift
//  LeetCode
//
//  Created by xander on 2022/1/30.
//

import Foundation

class Xoo648 {
    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        ""
    }
}

// MARK: - 1. Prefix Hash

class Xoo648_1 {
    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        ""
    }
}

// MARK: - 2. Trie

class Xoo648_2 {
    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        let trie = WordTrie()
        for root in dictionary {
            trie.insert(root)
        }
        
        var words = sentence.components(separatedBy: " ")
        for (i, word) in words.enumerated() {
            if let root = trie.findRoot(word) {
                words[i] = root
            }
        }
        return words.joined(separator: " ")
    }
}
