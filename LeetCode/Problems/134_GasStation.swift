//
//  134_GasStation.swift
//  LeetCode
//
//  Created by xander on 2022/1/21.
//

import Foundation

class Xoo134 {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        0
    }
}

// MARK: - 1. One pass

class Xoo134_1 {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        let n = gas.count
        var totalTank = 0
        var currTank = 0
        var starting = 0
        
        for i in 0..<n {
            totalTank += gas[i] - cost[i]
            currTank += gas[i] - cost[i]
            
            if currTank < 0 {
                currTank = 0
                starting = i + 1
            }
        }
        
        return totalTank >= 0 ? starting : -1
    }
}
