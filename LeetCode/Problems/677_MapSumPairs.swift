//
//  677_MapSumPairs.swift
//  LeetCode
//
//  Created by xander on 2021/7/31.
//

import Foundation

class MapSum {
    
    private var map: [String: Int] = [:]
    
    init() {}
    
    func insert(_ key: String, _ val: Int) {
        map[key] = val
    }
    
    func sum(_ prefix: String) -> Int {
        var sum = 0
        for (k, v) in map {
            if k.hasPrefix(prefix) {
                sum += v
            }
        }
        return sum
    }
}

// MARK: - Hashtable

class MapSum_A {
    
    private var map: [String: Int] = [:]
    private var pMap: [String: Int] = [:]
    
    init() {}
    
    func insert(_ key: String, _ val: Int) {
        var inc = val
        if let v = map[key] { inc -= v }
        map[key] = val
        
        var prefixKey = ""
        for c in key {
            prefixKey += "\(c)"
            pMap[prefixKey, default: 0] += inc
        }
    }
    
    func sum(_ prefix: String) -> Int {
        pMap[prefix, default: 0]
    }
}

class MapSum_B {
    
    private class XTrieNode {
        var sum: Int = 0
        var children: [Character: XTrieNode] = [:]
    }
    
    private var root: XTrieNode? = XTrieNode()
    private var map: [String: Int] = [:]
    
    init() {}
    
    func insert(_ key: String, _ val: Int) {
        let delta = val - (map[key] ?? 0)
        var node = root
        for c in key {
            guard let n = node else { break }
            if n.children[c] == nil {
                n.children[c] = XTrieNode()
            }
            n.children[c]!.sum += delta
            node = n.children[c]
        }
        map[key] = val
    }
    
    func sum(_ prefix: String) -> Int {
        guard let node = find(prefix) else { return 0 }
        return node.sum
    }
    
    private func find(_ prefix: String) -> XTrieNode? {
        var node = root
        for c in prefix {
            guard let n = node else { break }
            node = n.children[c]
        }
        return node
    }
}

// MARK: - 1. Brute Forece

class MapSum_1 {
    
    init() {
    }
    
    func insert(_ key: String, _ val: Int) {
    }
    
    func sum(_ prefix: String) -> Int {
        0
    }
}

// MARK: - 2. Prefix Hashmap

class MapSum_2 {
    
    init() {
    }
    
    func insert(_ key: String, _ val: Int) {
    }
    
    func sum(_ prefix: String) -> Int {
        0
    }
}

// MARK: - 3. Trie

class MapSum_3 {
    
    init() {
    }
    
    func insert(_ key: String, _ val: Int) {
    }
    
    func sum(_ prefix: String) -> Int {
        0
    }
}
