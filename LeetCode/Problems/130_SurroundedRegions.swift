//
//  130_SurroundedRegions.swift
//  LeetCode
//
//  Created by xander on 2021/11/1.
//

import Foundation

class Xoo130 {
    func solve(_ board: inout [[Character]]) {
    }
}

// MARK: - 1. DFS

class Xoo130_1 {
    func solve(_ board: inout [[Character]]) {
        let m = board.count
        let n = board[0].count
        var borders: [(Int, Int)] = []
        
        // 1.
        for i in 0..<m {
            borders.append((i, 0))
            borders.append((i, n - 1))
        }
        
        for i in 0..<n {
            borders.append((0, i))
            borders.append((m - 1, i))
        }
        
        // 2.
        for border in borders {
            dfs(&board, border.0, border.1)
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                }
                if board[i][j] == "E" {
                    board[i][j] = "O"
                }
            }
        }
    }
    
    private func dfs(_ board: inout [[Character]], _ r: Int, _ c: Int) {
        let m = board.count
        let n = board[0].count
        guard r >= 0 && r < m && c >= 0 && c < n && board[r][c] == "O" else { return }
        board[r][c] = "E"
        
        let dirs = [0, 1, 0, -1, 0]
        for d in 0..<4 {
            let nr = r + dirs[d]
            let nc = c + dirs[d + 1]
            dfs(&board, nr, nc)
        }
    }
}

// MARK: - 2. BFS

class Xoo130_2 {
    func solve(_ board: inout [[Character]]) {
    }
}
