//
//  421_MaximumXOROfTwoNumbersInAnArray.swift
//  LeetCode
//
//  Created by xander on 2022/1/27.
//

import Foundation

/*
 Prerequisites:
 1. 0 XOR x = x
 2. x XOR x = 0
 */

class Xoo421 {
    func findMaximumXOR(_ nums: [Int]) -> Int {
        let trie = BTrie()
        for num in nums {
            trie.insert(num)
        }
        
        var maxXOR = 0
        for num in nums {
            let currXOR = trie.searchMaxXOR(num)
            maxXOR = max(maxXOR, currXOR)
        }
        return maxXOR
    }
}

class BTrieNode {
    var children: [BTrieNode?] = Array(repeating: nil, count: 2)
}

class BTrie {
    private var root: BTrieNode?
    
    init() {
        root = BTrieNode()
    }
    
    func insert(_ num: Int) {
        var node = root
        for shift in (0..<32).reversed() {
            guard let n = node else { break }
            if n.children[(num >> shift) & 1] == nil {
                n.children[(num >> shift) & 1] = BTrieNode()
            }
            node = n.children[(num >> shift) & 1]
        }
    }
    
    func searchMaxXOR(_ num: Int) -> Int {
        var res = 0
        var node = root
        for shift in (0..<32).reversed() {
            guard let n = node else { break }
            if n.children[1 - (num >> shift) & 1] != nil {
                node = n.children[1 - (num >> shift) & 1]
                res = res << 1 + 1
            } else {
                node = n.children[(num >> shift) & 1]
                res = res << 1 + 0
            }
        }
        return res
    }
}


// MARK: - 1. Bitwise Prefixes in HashSet

class Xoo421_1 {
    func findMaximumXOR(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Bitwise Trie

class Xoo421_2 {
    func findMaximumXOR(_ nums: [Int]) -> Int {
        0
    }
}
