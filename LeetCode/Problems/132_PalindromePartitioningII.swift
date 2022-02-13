//
//  132_PalindromePartitioningII.swift
//  LeetCode
//
//  Created by xander on 2021/8/8.
//

import Foundation

class Xoo132 {
    
    // [X X X X] [j X i]
    // dp[i] = min { dp[j-1]+1 if s[j:i] is Pal } for every j
    // dp[i]: the min cuts needed for a palindrome partitioning of s[0...i]
    func minCut(_ s: String) -> Int {
        let n = s.count
        let arrayS = Array(s)
        
        var checks: [[Bool]] = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
        for i in 0..<n { checks[i][i] = true }
        for i in 0..<(n - 1) { checks[i][i + 1] = arrayS[i] == arrayS[i + 1] }
        if n >= 3 {
            for len in 3...n {
                for i in 0..<(n - len + 1) {
                    let j = i + len - 1
                    if arrayS[i] == arrayS[j] && checks[i + 1][j - 1] {
                        checks[i][j] = true
                    } else {
                        checks[i][j] = false
                    }
                }
            }
        }

        var dp: [Int] = Array(repeating: Int.max / 2, count: n)
        dp[0] = 1
        for i in 1..<n {
            for j in 0...i {
                if checks[j][i] {
                    if j == 0 {
                        dp[i] = 1
                    } else {
                        dp[i] = min(dp[i], dp[j - 1] + 1)
                    }
                }
            }
        }
        
        return dp[n - 1] - 1
    }
}

// MARK: - 1. Backtracking

class Xoo132_1 {
    func minCut(_ s: String) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming - Top Down (Recursion, Memoization)

class Xoo132_2 {
    func minCut(_ s: String) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming - Bottom Up (Tabulation)

class Xoo132_3 {
    func minCut(_ s: String) -> Int {
        0
    }
}

// MARK: - 4. Dynamic Programming - Top Down (Recursion, Memoization)

class Xoo132_4 {
    func minCut(_ s: String) -> Int {
        0
    }
}

// MARK: - 5. Optimized Tabulation Approach

class Xoo132_5 {
    func minCut(_ s: String) -> Int {
        0
    }
}
