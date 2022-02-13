//
//  714_BestTimeToBuyAndSellStockWithTransactionFee.swift
//  LeetCode
//
//  Created by xander on 2022/2/12.
//

import Foundation

class Xoo714 {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        let n = prices.count
        var maxProfit = 0
        var maxBalance = -50_000
        for i in 0..<n {
            let profit = maxProfit
            let balance = maxBalance
            maxProfit = max(profit, balance + prices[i] - fee)
            maxBalance = max(balance, profit - prices[i])
        }
        return maxProfit
    }
}

// MARK: - 1. Dynamic Programming

class Xoo714_1 {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        0
    }
}
