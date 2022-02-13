//
//  121_BestTimeToBuyAndSellStock.swift
//  LeetCode
//
//  Created by xander on 2021/10/16.
//

import Foundation

class Xoo121 {
    /**
     L[i]: lowest price up to i-th day
     P[i]: max profit up to i-th day
     */
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        guard n > 1 else { return 0 }
        var minPrices: [Int] = Array(repeating: Int.max, count: n)
        var maxProfit: [Int] = Array(repeating: 0, count: n)
        minPrices[0] = prices[0]
        maxProfit[0] = 0
        for i in 1..<n {
            minPrices[i] = min(minPrices[i - 1], prices[i])
            maxProfit[i] = max(maxProfit[i - 1], prices[i] - minPrices[i - 1])
        }
        return maxProfit[n - 1]
    }
}

class Xoo121_A {
    /**
     P[i]: max subarray up to i
     */
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        guard n > 1 else { return 0 }
        var gains: [Int] = Array(repeating: 0, count: n)
        for i in 1..<n {
            gains[i] = prices[i] - prices[i - 1]
        }
        return max(0, maxSubArray(gains))
    }
    
    /** ref. LeetCode #53. Kadanes's algorithm */
    private func maxSubArray(_ nums: [Int]) -> Int {
        var sum = nums[0]
        var curr = nums[0]
        for i in 1..<nums.count {
            curr = max(curr + nums[i], nums[i])
            if curr > sum { sum = curr }
        }
        return sum
    }
}

class Xoo121_B {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var maxProfit = 0
        var bestBuy = Int.max
        for i in 0..<n {
            if prices[i] > bestBuy {
                maxProfit = max(maxProfit, prices[i] - bestBuy)
            } else {
                bestBuy = prices[i]
            }
        }
        return maxProfit
    }
}

class Xoo121_C {
    func maxProfit(_ prices: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo121_1 {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var maxProfit = 0
        for i in 0..<(n - 1) {
            for j in (i + 1)..<n {
                maxProfit = max(maxProfit, prices[j] - prices[i])
            }
        }
        return maxProfit
    }
}

// MARK: - 2. One Pass

class Xoo121_2 {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var minPrice = Int.max
        var maxProfit = 0
        for i in 0..<n {
            minPrice = min(minPrice, prices[i])
            maxProfit = max(maxProfit, prices[i] - minPrice)
        }
        return maxProfit
    }
}
