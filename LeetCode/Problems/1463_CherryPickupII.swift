//
//  1463_CherryPickupII.swift
//  LeetCode
//
//  Created by xander on 2022/1/9.
//

import Foundation

class Xoo1463 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var memo: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: n), count: n), count: m)
        return dp(0, 0, n - 1, grid, &memo)
    }
    
    private func dp(_ y: Int, _ x1: Int, _ x2: Int, _ grid: [[Int]], _ memo: inout [[[Int]]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        guard x1 >= 0 && x1 < n && x2 >= 0 && x2 < n && y >= 0 && y < m else { return 0 }
        var ans = memo[y][x1][x2]
        if ans != -1 { return ans }
        
        let curr = grid[y][x1] + (x1 != x2 ? grid[y][x2] : 0)
        for d1 in -1...1 {
            for d2 in -1...1 {
                ans = max(ans, curr + dp(y + 1, x1 + d1, x2 + d2, grid, &memo))
            }
        }
        memo[y][x1][x2] = ans
        return ans
    }
}

class Xoo1463_A {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        let r = grid.count
        let c = grid[0].count
        var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: c + 2), count: c + 2), count: r + 2)
        for y in (1...r).reversed() {
            for x1 in 1...c {
                for x2 in 1...c {
                    let curr = grid[y - 1][x1 - 1] + (x1 != x2 ? grid[y - 1][x2 - 1] : 0)
                    var ans = dp[y][x1][x2]
                    for d1 in -1...1 {
                        for d2 in -1...1 {
                            ans = max(ans, curr + dp[y + 1][x1 + d1][x2 + d2])
                        }
                    }
                    dp[y][x1][x2] = ans
                }
            }
        }
        return dp[1][1][c]
    }
}

// MARK: - 1. Dynamic Programming (Top Down)

class Xoo1463_1 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming (Bottom Up)

class Xoo1463_2 {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        0
    }
}
