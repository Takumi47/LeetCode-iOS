//
//  473_MatchsticksToSquare.swift
//  LeetCode
//
//  Created by xander on 2021/6/15.
//

import Foundation

// MARK: - 1. DFS

class Xoo473_1 {
    private var maxSideLength = 0
    
    func makesquare(_ matchsticks: [Int]) -> Bool {
        guard matchsticks.count >= 4 else { return false }
        let matchsticks = matchsticks.sorted(by: >)
        maxSideLength = matchsticks.reduce(0, +) / 4
        
        var s = [Int](repeating: 0, count: 4)
        return dfs(matchsticks, 0, &s)
    }
    
    private func dfs(_ matchsticks: [Int], _ level: Int, _ s: inout [Int]) -> Bool {
        
        if level == matchsticks.count {
            return true //(s[0]^s[1] == 0) && (s[1]^s[2] == 0) && (s[2]^s[3] == 0)
        }
        
        let length = matchsticks[level]
        
        for i in 0..<s.count {
            guard s[i] + length <= maxSideLength else { continue }
            s[i] += length
            if dfs(matchsticks, level + 1, &s) { return true }
            s[i] -= length
            
            if s[i] == 0 { return false }
        }
        
        return false
    }
}

// MARK: - 2. Dynamic Programming

class Xoo473_2 {
    func makesquare(_ matchsticks: [Int]) -> Bool {
        guard matchsticks.count >= 4 else { return false }
        
        let perimeter = matchsticks.reduce(0, +)
        guard perimeter % 4 == 0 else { return false }
        
        let n = matchsticks.count
        var memo: [[Int]: Bool] = [:]
        return dp(matchsticks, &memo, perimeter / 4, (1 << n) - 1, 0)
    }
    
    private func dp(_ matchsticks: [Int],
                    _ memo: inout [[Int]: Bool],
                    _ sideLength: Int,
                    _ mask: Int,
                    _ sidesDone: Int) -> Bool {
        
        let n = matchsticks.count
        var done = sidesDone
        var total = 0
        for i in (0..<n).reversed() {
            if mask & (1 << i) == 0 {
                total += matchsticks[n - 1 - i]
            }
        }
        
        if total > 0 && total % sideLength == 0 { done += 1 }
        if done == 3 { return true }
        
        let pair = [mask, done]
        if let result = memo[pair] { return result }
        
        var ans = false
        
        // 還差多少可再完成一邊
        let x = total / sideLength
        let remaining = (x + 1) * sideLength - total
        for i in (0..<n).reversed() {
            if matchsticks[n - 1 - i] <= remaining && mask & (1 << i) > 0 {
                if dp(matchsticks, &memo, sideLength, mask^(1 << i), done) {
                    ans = true
                    break
                }
            }
            
        }
        
        memo[pair] = ans
        return ans
    }
}
