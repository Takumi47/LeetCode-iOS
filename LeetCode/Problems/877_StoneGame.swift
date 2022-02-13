//
//  877_StoneGame.swift
//  LeetCode
//
//  Created by xander on 2021/8/5.
//

import Foundation

// MARK: - Min-Max + Memorization

class Xoo877 {
    func stoneGame(_ piles: [Int]) -> Bool {
        let n = piles.count
        var memo: [[Int]] = Array(repeating: Array(repeating: Int.min, count: n), count: n)
        return score(piles, 0, n - 1, &memo) > 0
    }
    
    private func score(_ piles: [Int], _ l: Int, _ r: Int, _ memo: inout [[Int]]) -> Int {
        if l == r { return piles[l] }
        if memo[l][r] == Int.min {
            memo[l][r] = max(piles[l] - score(piles, l + 1, r, &memo), piles[r] - score(piles, l, r - 1, &memo))
        }
        return memo[l][r]
    }
}

// MARK: - 1. Dynamic Programming

class Xoo877_1 {
    func stoneGame(_ piles: [Int]) -> Bool {
        let n = piles.count
        
        // dp[i][j] = max(your_stones - op_stones) for piles[i] ~ piles[j]
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        for i in 0..<n {
            dp[i][i] = piles[i]
        }
        
        for c in 2...n { // count of piles
            for i in 0..<(n - c + 1) {
                let j = i + c - 1
                dp[i][j] = max(piles[i] - dp[i + 1][j], piles[j] - dp[i][j - 1])
            }
        }
        
        return dp[0][n - 1] > 0
    }
}

// MARK: - 1-D Dynamic Programming

class Xoo877_A {
    func stoneGame(_ piles: [Int]) -> Bool {
        let n = piles.count
        
        // dp[i] = max(your_stones - op_stones) for piles[i] ~ piles[i + c - 1]
        var dp: [Int] = piles
        
        for c in 2...n {
            for i in 0..<(n - c + 1) {
                dp[i] = max(piles[i] - dp[i + 1], piles[i + c - 1] - dp[i])
            }
        }
        
        return dp[0] > 0
    }
}

// MARK: - 2. Mathematical

class Xoo877_2 {
    func stoneGame(_ piles: [Int]) -> Bool {
        true
    }
}
