//
//  954_ArrayOfDoubledPairs.swift
//  LeetCode
//
//  Created by xander on 2021/8/12.
//

import Foundation

class Xoo954 {
    func canReorderDoubled(_ arr: [Int]) -> Bool {
        false
    }
}

// MARK: - 1. Greedy

class Xoo954_1 {
    func canReorderDoubled(_ arr: [Int]) -> Bool {
        var countMap: [Int: Int] = [:]
        for num in arr {
            countMap[num, default: 0] += 1
        }
        
        let keys = countMap.keys.sorted { abs($0) < abs($1) }
        for key in keys {
            let c1 = countMap[key, default: 0]
            let c2 = countMap[2 * key, default: 0]
            
            if c1 > 0 && (c2 - c1 < 0) { return false }
            
            countMap[key] = c1 - c2
            countMap[2 * key] = c2 - c1
        }
        return true
    }
}
