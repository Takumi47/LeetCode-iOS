//
//  746_MinCostClimbingStairs.swift
//  LeetCode
//
//  Created by xander on 2021/6/7.
//

import Foundation

// MARK: - 0.

class Xoo746 {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var memo: [Int: Int] = [:]
        return climbingCost(cost, -1, &memo)
    }
    
    private func climbingCost(_ costs: [Int], _ stair: Int, _ memo: inout [Int: Int]) -> Int {
        if stair >= costs.count { return 0 }
        
        var c1 = memo[stair + 1]
        if c1 == nil {
            c1 = climbingCost(costs, stair + 1, &memo)
            memo[stair + 1] = c1
        }

        var c2 = memo[stair + 2]
        if c2 == nil {
            c2 = climbingCost(costs, stair + 2, &memo)
            memo[stair + 2] = c2
        }

        return min(c1!, c2!) + (costs[safe: stair] ?? 0)
    }
}

class Xoo746_A {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var memo: [Int] = Array(repeating: Int.max, count: cost.count + 1)
        return dp(cost, cost.count, &memo)
    }
    
    private func dp(_ cost: [Int], _ i: Int, _ memo: inout [Int]) -> Int {
        guard i > 1 else { return 0 }
        if memo[i] == Int.max {
            memo[i] = min(dp(cost, i - 1, &memo) + cost[i - 1], dp(cost, i - 2, &memo) + cost[i - 2])
        }
        return memo[i]
    }
}

// MARK: - 1. Bottom-Up Dynamic Programming (Tabulation)

class Xoo746_1 {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let n = cost.count
        var minCosts: [Int] = Array(repeating: 0, count: n + 1)
        
        for i in 2...n {
            minCosts[i] = min(minCosts[i - 1] + cost[i - 1], minCosts[i - 2] + cost[i - 2])
        }
        
        return minCosts[n]
    }
}

// MARK: - 2. Top-Down Dynamic Programming (Recursion + Memoization)

class Xoo746_2 {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var memo: [Int: Int] = [:]
        return minimumCost(cost.count, cost, &memo)
    }
    
    /**
     Represent the minimum cost to reach the ith step
     */
    private func minimumCost(_ i: Int, _ costs: [Int], _ memo: inout [Int: Int]) -> Int {
        if i == 0 || i == 1 { return 0 }
        if let cost = memo[i] { return cost }
        
        let c1 = costs[i - 1] + minimumCost(i - 1, costs, &memo)
        let c2 = costs[i - 2] + minimumCost(i - 2, costs, &memo)
        
        memo[i] = min(c1, c2)
        return memo[i]!
    }
}

// MARK: - 3. Bottom-Up, Constant Space

class Xoo746_3 {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var downOne = 0
        var downTwo = 0
        for i in 2...cost.count {
            let temp = min(downOne + cost[i - 1], downTwo + cost[i - 2])

            downTwo = downOne
            downOne = temp
        }
        return downOne
    }
}
