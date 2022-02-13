//
//  122_BestTimeToBuyAndSellStockII.swift
//  LeetCode
//
//  Created by xander on 2021/11/11.
//

import Foundation

class Xoo122 {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var maxProfit = 0        // no holding
        var maxBalance = Int.min // holding
        for i in 0..<n {
            let p = maxProfit
            let b = maxBalance
            maxProfit = max(maxProfit, b + prices[i])
            maxBalance = max(maxBalance, p - prices[i])
        }
        return maxProfit
    }
}

// MARK: - 1. Brute Force

class Xoo122_1 {
    func maxProfit(_ prices: [Int]) -> Int {
        return calProfit(prices, 0)
    }
    
    private func calProfit(_ prices: [Int], _ s: Int) -> Int {
        let n = prices.count
        guard s < n else { return 0 }
        var max = 0
        for i in s..<n {
            var maxProfit = 0
            for j in (i + 1)..<n {
                if prices[i] < prices[j] {
                    let profit = calProfit(prices, j + 1) + prices[j] - prices[i]
                    if profit > maxProfit { maxProfit = profit }
                }
            }
            if maxProfit > max { max = maxProfit }
        }
        return max
    }
}

// MARK: - 2. Peak Valley Approach

class Xoo122_2 {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var valley = prices[0]
        var peak = prices[0]
        
        let n = prices.count
        var i = 0
        while i < n - 1 {
            while i < n - 1 && prices[i] >= prices[i + 1] { i += 1 }
            valley = prices[i]
            
            while i < n - 1 && prices[i] <= prices[i + 1] { i += 1 }
            peak = prices[i]
            
            maxProfit += peak - valley
        }
        
        return maxProfit
    }
}

// MARK: - 3. Simple One Pass

class Xoo122_3 {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i - 1] {
                maxProfit += prices[i] - prices[i - 1]
            }
        }
        return maxProfit
    }
}
