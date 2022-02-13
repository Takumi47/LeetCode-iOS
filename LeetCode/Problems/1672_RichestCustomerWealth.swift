//
//  1672_RichestCustomerWealth.swift
//  LeetCode
//
//  Created by xander on 2022/2/1.
//

import Foundation

class Xoo1672 {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        let m = accounts.count
        var maxWealth = 0
        for i in 0..<m {
            let wealth = accounts[i].reduce(0, +)
            maxWealth = max(maxWealth, wealth)
        }
        return maxWealth
    }
}

// MARK: - 1. Row Sum Maximum

class Xoo1672_1 {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        0
    }
}
