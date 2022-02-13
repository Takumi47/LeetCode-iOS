//
//  1510_StoneGameIV.swift
//  LeetCode
//
//  Created by xander on 2022/1/23.
//

import Foundation

class Xoo1510 {
    func winnerSquareGame(_ n: Int) -> Bool {
        false
    }
}

// MARK: - 1. DFS with memoization

class Xoo1510_1 {
    func winnerSquareGame(_ n: Int) -> Bool {
        var memo: [Int: Bool] = [:]
        memo[0] = false
        return dfs(n, &memo)
    }
    
    private func dfs(_ remain: Int, _ memo: inout [Int: Bool]) -> Bool {
        if let res = memo[remain] { return res }
        
        let root = Int(sqrt(Double(remain)))
        for i in (1...root).reversed() {
            if !dfs(remain - i * i, &memo) {
                memo[remain] = true
                return true
            }
        }
        
        memo[remain] = false
        return false
    }
}

// MARK: - 2. DP

/*
 dp[i]: the result of the game with i stones
 */

class Xoo1510_2 {
    func winnerSquareGame(_ n: Int) -> Bool {
        var dp: [Bool] = Array(repeating: false, count: n + 1)
        for remain in 1...n {
            let root = Int(sqrt(Double(remain)))
            for i in (1...root).reversed() {
                if !dp[remain - i * i] {
                    dp[remain] = true
                    break
                }
            }
        }
        return dp[n]
    }
}
