//
//  TrieNode.swift
//  LeetCode
//
//  Created by xander on 2021/6/14.
//

import Foundation

class TrieNode<Key: Hashable> {
    
    // MARK: - Properties
    
    var key: Key?
    weak var parent: TrieNode?
    var children: [Key: TrieNode] = [:]
    var isTerminating = false
    
    // MARK: - Lifecycle
    
    init(key: Key? = nil, parent: TrieNode? = nil) {
        self.key = key
        self.parent = parent
    }
}
