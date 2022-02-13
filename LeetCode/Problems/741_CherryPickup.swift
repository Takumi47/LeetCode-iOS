//
//  741_CherryPickup.swift
//  LeetCode
//
//  Created by xander on 2022/1/9.
//

import Foundation

class Xoo741 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var memo: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: Int.min, count: n), count: n), count: n)
        return max(0, dp(n - 1, n - 1, n - 1, grid, &memo))
    }
    
    private func dp(_ x1: Int, _ y1: Int, _ x2: Int, _ grid: [[Int]], _ memo: inout [[[Int]]]) -> Int {
        let y2 = x1 + y1 - x2
        guard x1 >= 0 && y1 >= 0 && x2 >= 0 && y2 >= 0 else { return -1 }
        guard grid[x1][y1] >= 0 && grid[x2][y2] >= 0 else { return -1 }
        if x1 == 0 && y1 == 0 { return grid[x1][y1] }
        if memo[x1][y1][x2] != Int.min { return memo[x1][y1][x2] }
        
        var ans = max(dp(x1 - 1, y1, x2 - 1, grid, &memo),
                      dp(x1, y1 - 1, x2, grid, &memo),
                      dp(x1, y1 - 1, x2 - 1, grid, &memo),
                      dp(x1 - 1, y1, x2, grid, &memo))
        if ans < 0 {
            memo[x1][y1][x2] = -1
            return -1
        }
        ans += grid[x1][y1]
        if x1 != x2 { ans += grid[x2][y2] }
        memo[x1][y1][x2] = ans
        
        return ans
    }
}

// MARK: - 1. Greedy [Wrong Answer]

class Xoo741_1 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming (Top Down)

class Xoo741_2 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming (Bottom Up)

class Xoo741_3 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        0
    }
}
