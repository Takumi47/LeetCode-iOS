//
//  62_UniquePaths.swift
//  LeetCode
//
//  Created by xander on 2021/11/2.
//

import Foundation

class Xoo62 {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        return paths(m, n, &dp)
    }
    
    private func paths(_ m: Int, _ n: Int, _ dp: inout [[Int]]) -> Int {
        guard m > 0 && n > 0 else { return 0 }
        if m == 1 && n == 1 { return 1 }
        if dp[m][n] > 0 { return dp[m][n] }
        let left = paths(m, n - 1, &dp)
        let top = paths(m - 1, n, &dp)
        dp[m][n] = left + top
        return dp[m][n]
    }
}

class Xoo62_A {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        dp[1][1] = 1
        for i in 1...m {
            for j in 1...n {
                if i == 1 && j == 1 { continue }
                dp[i][j] = dp[i][j - 1] + dp[i - 1][j]
            }
        }
        return dp[m][n]
    }
}

// MARK: - 1. Dynamic Programming

class Xoo62_1 {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 1, count: n), count: m)
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i][j - 1] + dp[i - 1][j]
            }
        }
        return dp[m - 1][n - 1]
    }
}

// MARK: - 2. Math (Python3 only)

class Xoo62_2 {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        0
    }
}
