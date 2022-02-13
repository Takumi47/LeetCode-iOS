//
//  980_UniquePathsIII.swift
//  LeetCode
//
//  Created by xander on 2021/11/3.
//

import Foundation

class Xoo980 {
    func uniquePathsIII(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var grid = grid
        var x = -1
        var y = -1
        var remain = 1
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 0 {
                    remain += 1
                } else if grid[i][j] == 1 {
                    x = i
                    y = j
                }
            }
        }
        
        return dfs(&grid, x, y, remain)
    }
    
    private func dfs(_ grid: inout [[Int]], _ r: Int, _ c: Int, _ remain: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        guard r >= 0 && r < m && c >= 0 && c < n && grid[r][c] != -1 else { return 0 }
        if grid[r][c] == 2 { return remain == 0 ? 1 : 0 }
        
        var paths = 0
        
        grid[r][c] = -1
        let dirs = [0, 1, 0, -1, 0]
        for d in 0..<4 {
            let nr = r + dirs[d]
            let nc = c + dirs[d + 1]
            paths += dfs(&grid, nr, nc, remain - 1)
        }
        grid[r][c] = 0
        
        return paths
    }
}

// MARK: - 1. Backtracking

class Xoo980_1 {
    func uniquePathsIII(_ grid: [[Int]]) -> Int {
        0
    }
}
