//
//  37_SudokuSolver.swift
//  LeetCode
//
//  Created by xander on 2021/8/21.
//

import Foundation

class Xoo37 {
    var rows: [[Bool]] = []
    var cols: [[Bool]] = []
    var boxes: [[Bool]] = []
    
    func solveSudoku(_ board: inout [[Character]]) {
        rows = Array(repeating: Array(repeating: false, count: 10), count: 9)
        cols = Array(repeating: Array(repeating: false, count: 10), count: 9)
        boxes = Array(repeating: Array(repeating: false, count: 10), count: 9)
        
        for i in 0..<9 {
            for j in 0..<9 where board[i][j] != "." {
                let k = i / 3 * 3 + j / 3
                let num = Int("\(board[i][j])")!
                rows[i][num] = true
                cols[j][num] = true
                boxes[k][num] = true
            }
        }
        
        _ = fill(&board, 0, 0)
    }
    
    private func fill(_ board: inout [[Character]], _ i: Int, _ j: Int) -> Bool {
        if i == 9 { return true }
        if j == 9 { return fill(&board, i + 1, 0) }
        
        guard board[i][j] == "." else { return fill(&board, i, j + 1) }
        let k = i / 3 * 3 + j / 3
        
        for num in 1...9 {
            if !rows[i][num] && !cols[j][num] && !boxes[k][num] {
                rows[i][num] = true
                cols[j][num] = true
                boxes[k][num] = true
                board[i][j] = Character("\(num)")
                
                if fill(&board, i, j + 1) { return true }
                
                board[i][j] = "."
                rows[i][num] = false
                cols[j][num] = false
                boxes[k][num] = false
            }
        }
        return false
    }
}

class Xoo37_A {
    func solveSudoku(_ board: inout [[Character]]) {
        _ = dfs(&board, 0, 0)
    }
    
    private func dfs(_ board: inout [[Character]], _ i: Int, _ j: Int) -> Bool {
        if i == 9 { return true }
        if j == 9 { return dfs(&board, i + 1, 0) }
        
        guard board[i][j] == "." else { return dfs(&board, i, j + 1) }
        
        for num in "123456789" {
            guard isValid(board, i, j, num) else { continue }
            board[i][j] = num
            if dfs(&board, i, j + 1) { return true }
            board[i][j] = "."
        }
        return false
    }
    
    private func isValid(_ board: [[Character]], _ i: Int, _ j: Int, _ n: Character) -> Bool {
        for row in 0..<9 {
            if board[row][j] == n { return false }
        }
        for col in 0..<9 {
            if board[i][col] == n { return false }
        }

        let x = i / 3 * 3
        let y = j / 3 * 3
        for p in 0..<3 {
            for q in 0..<3 {
                if board[x + p][y + q] == n { return false }
            }
        }
        return true
    }
}

// MARK: - 1. Backtracking

class Xoo37_1 {
    func solveSudoku(_ board: inout [[Character]]) {
    }
}
