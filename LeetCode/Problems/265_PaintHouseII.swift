//
//  265_PaintHouseII.swift
//  LeetCode
//
//  Created by xander on 2021/8/22.
//

import Foundation

class Xoo265 {
    
    /// dp[i][j]: the min cost of painting houses [0, i] ending with cost[i][j]
    func minCostII(_ costs: [[Int]]) -> Int {
        let n = costs.count
        let k = costs[0].count
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: k), count: n)
        for j in 0..<k {
            dp[0][j] = costs[0][j]
        }
        
        for i in 1..<n {
            // 1. find smallest & 2nd-smallest
            var temp: [(Int, Int)] = [] // (color, dp[i - 1][color])
            for j in 0..<k {
                temp.append((j, dp[i - 1][j]))
            }
            temp.sort { $0.1 < $1.1 }
            
            // 2.
            for j in 0..<k {
                if j == temp[0].0 {
                    dp[i][j] = temp[1].1 + costs[i][j]
                } else {
                    dp[i][j] = temp[0].1 + costs[i][j]
                }
            }
        }
        
        return dp[n - 1].min() ?? 0
    }
}

class Xoo265_A {
    func minCostII(_ costs: [[Int]]) -> Int {
        let n = costs.count
        let k = costs[0].count
        var dp: [Int] = costs[0]
        
        for i in 1..<n {
            let temp = dp.enumerated()
                .map { ix, cost in (ix, cost) }
                .sorted { $0.1 < $1.1 }
            
            for j in 0..<k {
                if j == temp[0].0 {
                    dp[j] = temp[1].1 + costs[i][j]
                } else {
                    dp[j] = temp[0].1 + costs[i][j]
                }
            }
        }
        
        return dp.min() ?? 0
    }
}

// MARK: - 1. Memoization

class Xoo265_1 {
    func minCostII(_ costs: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming

class Xoo265_2 {
    func minCostII(_ costs: [[Int]]) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming with O(k) additional Space

class Xoo265_3 {
    func minCostII(_ costs: [[Int]]) -> Int {
        0
    }
}

// MARK: - 4. Dynamic Programming with Optimized Time

class Xoo265_4 {
    func minCostII(_ costs: [[Int]]) -> Int {
        0
    }
}

// MARK: - 5. Dynamic Programming with Optimized Time and Space

class Xoo265_5 {
    func minCostII(_ costs: [[Int]]) -> Int {
        0
    }
}
