//
//  521_LongestUncommonSubsequenceI.swift
//  LeetCode
//
//  Created by xander on 2021/8/28.
//

import Foundation

class Xoo521 {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        0
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo521_1 {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        let A = Array(a)
        let B = Array(b)
        var map: [String: Int] = [:]
        
        for s in [A, B] {
            for i in 0..<(1 << s.count) {
                var t = ""
                for j in 0..<s.count {
                    if (i >> j) & 1 != 0 {
                        t.append(s[j])
                    }
                }
                map[t, default: 0] += 1
            }
        }
        
        var res = -1
        for (k, v) in map {
            if v == 1 {
                res = max(res, k.count)
            }
        }
        return res
    }
}

// MARK: - 2. Simple Solution

class Xoo521_2 {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        if a == b { return -1 }
        if a.count == b.count { return a.count }
        return max(a.count, b.count)
    }
}
