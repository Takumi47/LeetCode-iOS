//
//  425_WordSquares.swift
//  LeetCode
//
//  Created by xander on 2022/1/31.
//

import Foundation

class Xoo425 {
    func wordSquares(_ words: [String]) -> [[String]] {
        []
    }
}

// MARK: - 1. Backtracking with HashTable

class Xoo425_1 {
    func wordSquares(_ words: [String]) -> [[String]] {
        let map = buildPrefixHashTable(words)
        var res: [[String]] = []
        for word in words {
            var wordSquares = [Array(word)]
            backtracking(word.count, map, &wordSquares, &res)
        }
        return res
    }
    
    private func backtracking(_ n: Int, _ map: [String: [[Character]]], _ wordSquares: inout [[Character]], _ res: inout [[String]]) {
        guard wordSquares.count < n else {
            let list = wordSquares.map { String($0) }
            res.append(list)
            return
        }
        
        var prefix = ""
        for word in wordSquares {
            prefix += "\(word[wordSquares.count])"
        }
        
        for candidate in map[prefix, default: []] {
            wordSquares.append(candidate)
            backtracking(n, map, &wordSquares, &res)
            wordSquares.removeLast()
        }
    }
    
    private func buildPrefixHashTable(_ words: [String]) -> [String: [[Character]]] {
        var map: [String: [[Character]]] = [:]
        for word in words {
            let n = word.count
            let chars = Array(word)
            for i in 1...n {
                let prefix = String(chars.prefix(i))
                map[prefix, default: []].append(chars)
            }
        }
        return map
    }
}

// MARK: - 2. Backtracking with Trie

class Xoo425_2 {
    func wordSquares(_ words: [String]) -> [[String]] {
        let trie = Trie425()
        words.forEach { trie.insert($0) }
        
        var res: [[String]] = []
        for word in words {
            var wordSquares = [Array(word)]
            backtracking(word.count, trie, &wordSquares, &res)
        }
        return res
    }
    
    private func backtracking(_ n: Int, _ trie: Trie425, _ wordSquares: inout [[Character]], _ res: inout [[String]]) {
        guard wordSquares.count < n else {
            let list = wordSquares.map { String($0) }
            res.append(list)
            return
        }
        
        var prefix = ""
        for word in wordSquares {
            prefix += "\(word[wordSquares.count])"
        }
        
        for candidate in trie.search(prefix) {
            wordSquares.append(candidate)
            backtracking(n, trie, &wordSquares, &res)
            wordSquares.removeLast()
        }
    }
}
