//
//  791_CustomSortString.swift
//  LeetCode
//
//  Created by xander on 2021/7/14.
//

import Foundation

class Xoo791 {
    func customSortString(_ order: String, _ str: String) -> String {
        var map: [Character: Int] = [:]
        for (i, o) in order.enumerated() { map[o] = i }
        
        var sorted: [[Character]] = Array(repeating: [], count: order.count)
        var others = ""
        for s in str {
            if let i = map[s] {
                sorted[i].append(s)
            } else {
                others.append(s)
            }
        }
        
        let sortedStr = sorted.compactMap { String($0) }.joined()
        return sortedStr + others
    }
}

// MARK: - 1. Count and Write

class Xoo791_1 {
    func customSortString(_ order: String, _ str: String) -> String {
        var count: [Int] = Array(repeating: 0, count: 26)
        for s in str {
            let index = Int(s.asciiValue! - Character("a").asciiValue!)
            count[index] += 1
        }
        
        var ans = ""
        for o in order {
            let index = Int(o.asciiValue! - Character("a").asciiValue!)
            for _ in 0..<count[index] {
                ans.append(o)
            }
            count[index] = 0
        }

        for s in str {
            let index = Int(s.asciiValue! - Character("a").asciiValue!)
            for _ in 0..<count[index] {
                ans.append(s)
            }
            count[index] = 0
        }
        return ans
    }
}
