//
//  200_NumberOfIslands.swift
//  LeetCode
//
//  Created by xander on 2021/8/1.
//

import Foundation

class Xoo200 {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard !grid.isEmpty else { return 0 }
        let m = grid.count
        let n = grid[0].count
        var grid = grid
        var ans = 0
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == "1" {
                    ans += 1
                    dfs(&grid, i, j)
                }
            }
        }
        return ans
    }
    
    private func dfs(_ grid: inout [[Character]], _ r: Int, _ c: Int) {
        let m = grid.count
        let n = grid[0].count
        guard r >= 0 && c >= 0 && r < m && c < n && grid[r][c] == "1" else { return }
        grid[r][c] = "0"
        dfs(&grid, r + 1, c)
        dfs(&grid, r - 1, c)
        dfs(&grid, r, c + 1)
        dfs(&grid, r, c - 1)
    }
}

// MARK: - 1. DFS

class Xoo200_1 {
    func numIslands(_ grid: [[Character]]) -> Int {
        0
    }
}

// MARK: - 2. BFS

class Xoo200_2 {
    func numIslands(_ grid: [[Character]]) -> Int {
        0
    }
}

// MARK: - 3. Union Find (Disjoint Set)

class Xoo200_3 {
    func numIslands(_ grid: [[Character]]) -> Int {
        0
    }
}
