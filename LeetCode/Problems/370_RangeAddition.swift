//
//  370_RangeAddition.swift
//  LeetCode
//
//  Created by xander on 2021/7/15.
//

import Foundation

class Xoo370 {
    func getModifiedArray(_ length: Int, _ updates: [[Int]]) -> [Int] {
        []
    }
}

// MARK: - 1. Naive Approach

class Xoo370_1 {
    func getModifiedArray(_ length: Int, _ updates: [[Int]]) -> [Int] {
        var res: [Int] = Array(repeating: 0, count: length)
        for update in updates {
            let start = update[0]
            let end = update[1]
            let inc = update[2]
            for i in start...end {
                res[i] += inc
            }
        }
        return res
    }
}

// MARK: - 2. Range Caching

class Xoo370_2 {
    func getModifiedArray(_ length: Int, _ updates: [[Int]]) -> [Int] {
        var res: [Int] = Array(repeating: 0, count: length)
        
        for update in updates {
            let start = update[0]
            let end = update[1]
            let val = update[2]
            
            res[start] += val
            if end < length - 1 {
                res[end + 1] -= val
            }
        }
        
        for i in 1..<length {
            res[i] += res[i - 1]
        }
        
        return res
    }
}
