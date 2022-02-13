//
//  63_UniquePathsII.swift
//  LeetCode
//
//  Created by xander on 2021/11/3.
//

import Foundation

class Xoo63 {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
        var dp: [[Int]] = Array(repeating: Array(repeating: Int.min, count: n), count: m)
        return paths(m - 1, n - 1, obstacleGrid, &dp)
    }
    
    private func paths(_ m: Int, _ n: Int, _ grid: [[Int]], _ dp: inout [[Int]]) -> Int {
        guard m >= 0 && n >= 0 else { return 0 }
        if m == 0 && n == 0 { return 1 - grid[0][0] }
        if dp[m][n] != Int.min { return dp[m][n] }
        
        if grid[m][n] == 1 {
            dp[m][n] = 0
        } else {
            let left = paths(m, n - 1, grid, &dp)
            let top = paths(m - 1, n, grid, &dp)
            dp[m][n] = left + top
        }

        return dp[m][n]
    }
}

// MARK: - 1. Dynamic Programming

class Xoo63_1 {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        0
    }
}
