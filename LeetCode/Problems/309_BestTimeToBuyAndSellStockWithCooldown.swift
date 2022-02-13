//
//  309_BestTimeToBuyAndSellStockWithCooldown.swift
//  LeetCode
//
//  Created by xander on 2022/2/12.
//

import Foundation

class Xoo309 {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var sold = -1_000    // Can't buy, Can't sell
        var holding = -1_000 // Can't buy, Can sell
        var cooldown = 0     // Can buy, Can't sell
        
        for i in 0..<n {
            let s = sold
            let h = holding
            let c = cooldown
            sold = h + prices[i]
            holding = max(h, c - prices[i])
            cooldown = max(c, s)
        }
        
        return max(sold, cooldown)
    }
}

// MARK: - 1. Dynamic Programming with State Machine

class Xoo309_1 {
    func maxProfit(_ prices: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Yet-Another Dynamic Programming

class Xoo309_2 {
    func maxProfit(_ prices: [Int]) -> Int {
        0
    }
}
