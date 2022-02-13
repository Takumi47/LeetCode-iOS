//
//  97_InterleavingString.swift
//  LeetCode
//
//  Created by xander on 2021/6/2.
//

import Foundation

// MARK: - 1. Brute Force

class Xoo97_1 {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        guard s1.count + s2.count == s3.count else { return false }
        return check(s1, 0, s2, 0, "", s3)
    }
    
    private func check(_ s1: String, _ i: Int, _ s2: String, _ j: Int, _ res: String, _ s3: String) -> Bool {
        if res == s3 && i == s1.count && j == s2.count { return true }
        
        var ans = false
        if i < s1.count {
            let char = Array(s1)[i]
            ans = ans || check(s1, i + 1, s2, j, res + "\(char)", s3)
        }
        if j < s2.count {
            let char = Array(s2)[j]
            ans = ans || check(s1, i, s2, j + 1, res + "\(char)", s3)
        }
        return ans
    }
}

// MARK: - 2. Recursion with memoization

class Xoo97_2 {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        guard s1.count + s2.count == s3.count else { return false }
        var memo: [[Int]] = Array(repeating: Array(repeating: -1, count: s2.count), count: s1.count)
        return check(s1, 0, s2, 0, s3, 0, &memo)
    }
    
    private func check(_ s1: String, _ i: Int, _ s2: String, _ j: Int, _ s3: String, _ k: Int, _ memo: inout [[Int]]) -> Bool {
        
        if i == s1.count { return s2[j...] == s3[k...] }
        if j == s2.count { return s1[i...] == s3[k...] }
        
        guard memo[i][j] == -1 else { return memo[i][j] == 1 }
        
        var ans = false
        if (s1[i] == s3[k] && check(s1, i + 1, s2, j, s3, k + 1, &memo))
            || (s2[j] == s3[k] && check(s1, i, s2, j + 1, s3, k + 1, &memo)) { ans = true }
        
        memo[i][j] = ans ? 1 : 0
        return ans
    }
}

// MARK: - 3. Using 2D Dynamic Programming

class Xoo97_3 {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        guard s1.count + s2.count == s3.count else { return false }
        var dp: [[Bool]] = Array(repeating: Array(repeating: false, count: s2.count + 1), count: s1.count + 1)
        for i in 0...s1.count {
            for j in 0...s2.count {
                if i == 0 && j == 0 {
                    dp[i][j] = true
                } else if i == 0 {
                    dp[i][j] = dp[i][j - 1] && s2[j - 1] == s3[i + j - 1]
                } else if j == 0 {
                    dp[i][j] = dp[i - 1][j] && s1[i - 1] == s3[i + j - 1]
                } else {
                    dp[i][j] = (dp[i][j - 1] && s2[j - 1] == s3[i + j - 1])
                        || (dp[i - 1][j] && s1[i - 1] == s3[i + j - 1])
                }
            }
        }
        return dp[s1.count][s2.count]
    }
}

// MARK: - 4. Using 1D Dynamic Programming

class Xoo97_4 {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        guard s1.count + s2.count == s3.count else { return false }
        var dp: [Bool] = Array(repeating: false, count: s2.count + 1)
        for i in 0...s1.count {
            for j in 0...s2.count {
                if i == 0 && j == 0 {
                    dp[j] = true
                } else if i == 0 {
                    dp[j] = dp[j - 1] && s2[j - 1] == s3[i + j - 1]
                } else if j == 0 {
                    dp[j] = dp[j] && s1[i - 1] == s3[i + j - 1]
                } else {
                    dp[j] = (dp[j] && s1[i - 1] == s3[i + j - 1])
                        || (dp[j - 1] && s2[j - 1] == s3[i + j - 1])
                }
            }
        }
        return dp[s2.count]
    }
}
