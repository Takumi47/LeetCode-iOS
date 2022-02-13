//
//  1217_MinimumCostToMoveChipsToTheSamePositiion.swift
//  LeetCode
//
//  Created by xander on 2021/12/6.
//

import Foundation

class Xoo1217 {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Moviing Chips Cleverly

class Xoo1217_1 {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var even = 0
        var odd = 0
        for pos in position {
            if pos % 2 == 0 {
                even += 1
            } else {
                odd += 1
            }
        }
        return min(even, odd)
    }
}
