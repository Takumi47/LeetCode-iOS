//
//  212_WordSearchII.swift
//  LeetCode
//
//  Created by xander on 2021/10/9.
//

import Foundation

class Xoo212 {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        var res: [String] = []
        for word in words {
            if exist(board, word) {
                res.append(word)
            }
        }
        return res
    }
    
    private func exist(_ board: [[Character]], _ word: String) -> Bool {
        let m = board.count
        let n = board[0].count
        var board = board
        let word = Array(word)
        for i in 0..<m {
            for j in 0..<n {
                if search(&board, word, i, j, 0) {
                    return true
                }
            }
        }
        return false
    }
    
    private func search(_ board: inout [[Character]], _ word: [Character], _ i: Int, _ j: Int, _ d: Int) -> Bool {
        let m = board.count
        let n = board[0].count
        guard i >= 0 && i < m && j >= 0 && j < n && board[i][j] == word[d] else { return  false }
        if d == word.count - 1 { return true }
        
        let curr = board[i][j]
        board[i][j] = "0"
        let found = search(&board, word, i + 1, j, d + 1)
        || search(&board, word, i - 1, j, d + 1)
        || search(&board, word, i, j + 1, d + 1)
        || search(&board, word, i, j - 1, d + 1)
        board[i][j] = curr
        return found
    }
}

class Xoo212_A {
    class XTrieNode {
        var word = ""
        var children: [XTrieNode?] = Array(repeating: nil, count: 26)
    }
    
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let root = XTrieNode()
        for word in words {
            var curr: XTrieNode? = root
            for c in word {
                let index = Int(c.asciiValue! - Character("a").asciiValue!)
                if curr?.children[index] == nil {
                    curr?.children[index] = XTrieNode()
                }
                curr = curr?.children[index]
            }
            curr?.word = word
        }
        
        let m = board.count
        let n = board[0].count
        var board = board
        var res: [String] = []
        for i in 0..<m {
            for j in 0..<n {
                dfs(&board, i, j, root, &res)
            }
        }
        return res
    }
    
    private func dfs(_ board: inout [[Character]], _ i: Int, _ j: Int, _ node: XTrieNode?, _ res: inout [String]) {
        let m = board.count
        let n = board[0].count
        guard i >= 0 && i < m && j >= 0 && j < n && board[i][j] != "0" else { return }
        
        let curr = board[i][j]
        let index = Int(curr.asciiValue! - Character("a").asciiValue!)
        guard let child = node?.children[index] else { return }
        
        if !child.word.isEmpty {
            res.append(child.word)
            child.word = ""
        }
        
        board[i][j] = "0"
        dfs(&board, i + 1, j, child, &res)
        dfs(&board, i - 1, j, child, &res)
        dfs(&board, i, j + 1, child, &res)
        dfs(&board, i, j - 1, child, &res)
        board[i][j] = curr
    }
}

class Xoo212_B {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let trie = WordTrie()
        for word in words {
            trie.insert(word)
        }
        
        let m = board.count
        let n = board[0].count
        var board = board
        var res: [String] = []
        for i in 0..<m {
            for j in 0..<n {
                dfs(&board, m, n, i, j, trie, trie.wRoot, "", &res)
            }
        }
        return res
    }
    
    private func dfs(_ board: inout [[Character]], _ m: Int, _ n: Int, _ r: Int, _ c: Int, _ trie: WordTrie, _ node: WordNode?, _ word: String, _ res: inout [String]) {
        guard r >= 0 && r < m && c >= 0 && c < n && board[r][c] != "0" else { return }
        
        let char = board[r][c]
        let idx = Int(char.asciiValue! - Character("a").asciiValue!)
        guard let child = node?.children[idx], child.count != 0 else { return }
        
        let newWord = word + "\(char)"
        if child.isWord {
            res.append(newWord)
            trie.remove(newWord) // ⭐️⭐️⭐️⭐️⭐️
        }
        
        board[r][c] = "0"
        let dirs = [0, 1, 0, -1, 0]
        for d in 0..<4 {
            let nr = r + dirs[d]
            let nc = c + dirs[d + 1]
            dfs(&board, m, n, nr, nc, trie, child, newWord, &res)
        }
        board[r][c] = char
    }
}

// MARK: - 1. Backtracking with Trie

class Xoo212_1 {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        []
    }
}
