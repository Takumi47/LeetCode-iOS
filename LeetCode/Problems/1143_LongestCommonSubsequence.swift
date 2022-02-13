//
//  1143_LongestCommonSubsequence.swift
//  LeetCode
//
//  Created by xander on 2021/7/8.
//

import Foundation

class Xoo1143 {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let m = text1.count
        let n = text2.count
        let t1 = text1.map { $0 }
        let t2 = text2.map { $0 }
        var memo: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        return lcs(t1, t2, m, n, &memo)
    }
    
    private func lcs(_ t1: [Character], _ t2: [Character], _ m: Int, _ n: Int, _ memo: inout [[Int]]) -> Int {
        guard memo[m][n] == 0 else { return memo[m][n] }
        
        if m == 0 || n == 0 {
            return 0
        } else if t1[m - 1] == t2[n - 1] {
            memo[m][n] = 1 + lcs(t1, t2, m - 1, n - 1, &memo)
        } else {
            memo[m][n] = max(lcs(t1, t2, m - 1, n, &memo), lcs(t1, t2, m, n - 1, &memo))
        }
        
        return memo[m][n]
    }
}

// MARK: - 1. Memoization

class Xoo1143_1 {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        0
    }
}

// MARK: - 2. Improved Memoization

class Xoo1143_2 {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming

class Xoo1143_3 {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        0
    }
}

// MARK: - 4. Dynamic Programming with Space Optimization

class Xoo1143_4 {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        0
    }
}
