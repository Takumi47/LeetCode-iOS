//
//  764_LargestPlusSign.swift
//  LeetCode
//
//  Created by xander on 2021/9/9.
//

import Foundation

class Xoo764 {
    func orderOfLargestPlusSign(_ n: Int, _ mines: [[Int]]) -> Int {
        0
    }
}

// MARK: - 1. Brute Forece (TLE)

class Xoo764_1 {
    func orderOfLargestPlusSign(_ n: Int, _ mines: [[Int]]) -> Int {
        var banned: Set<Int> = []
        for mine in mines {
            banned.insert(mine[0] * n + mine[1])
        }
        
        var ans = 0
        for r in 0..<n {
            for c in 0..<n {
                var k = 0
                while (k <= r && r + k < n) && (k <= c && c + k < n)
                        && !banned.contains((r - k) * n + c)
                        && !banned.contains((r + k) * n + c)
                        && !banned.contains(r * n + (c - k))
                        && !banned.contains(r * n + (c + k)) {
                    k += 1
                }
                ans = max(ans, k)
            }
        }
        return ans
    }
}

// MARK: - 2. Dynamic Programming

class Xoo764_2 {
    func orderOfLargestPlusSign(_ n: Int, _ mines: [[Int]]) -> Int {
        var banned: Set<Int> = []
        for mine in mines {
            banned.insert(mine[0] * n + mine[1])
        }
        
        var ans = 0
        var count = 0
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        for r in 0..<n {
            count = 0
            for c in 0..<n {
                count = banned.contains(r * n + c) ? 0 : count + 1
                dp[r][c] = count
            }
            
            count = 0
            for c in (0..<n).reversed() {
                count = banned.contains(r * n + c) ? 0 : count + 1
                dp[r][c] = min(dp[r][c], count)
            }
        }
        
        for c in 0..<n {
            count = 0
            for r in 0..<n {
                count = banned.contains(r * n + c) ? 0 : count + 1
                dp[r][c] = min(dp[r][c], count)
            }
            
            count = 0
            for r in (0..<n).reversed() {
                count = banned.contains(r * n + c) ? 0 : count + 1
                dp[r][c] = min(dp[r][c], count)
                ans = max(ans, dp[r][c])
            }
        }
        
        return ans
    }
}
