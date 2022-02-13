//
//  79_WordSearch.swift
//  LeetCode
//
//  Created by xander on 2021/10/8.
//

import Foundation

class Xoo79 {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
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
        guard i >= 0 && i < m && j >= 0 && j < n && board[i][j] == word[d] else { return false }
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

// MARK: - 1. Backtracking

class Xoo79_1 {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        false
    }
}

