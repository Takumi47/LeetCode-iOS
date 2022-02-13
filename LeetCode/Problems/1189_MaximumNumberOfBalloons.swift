//
//  1189_MaximumNumberOfBalloons.swift
//  LeetCode
//
//  Created by xander on 2021/9/13.
//

import Foundation

class Xoo1189 {
    func maxNumberOfBalloons(_ text: String) -> Int {
        guard text.count >= 7 else { return 0 }
        var map: [Character: Int] = [:]
        for c in "balloon" {
            map[c] = 0
        }
        
        for c in text {
            guard let count = map[c] else { continue }
            map[c] = count + 1
        }
        
        var ans = Int.max
        for (k, v) in map {
            if k == "l" || k == "o" {
                ans = min(ans, v / 2)
            } else {
                ans = min(ans, v)
            }
        }
        return ans
    }
}

// MARK: - 1. Counting Characters

class Xoo1189_1 {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var b = 0
        var a = 0
        var l = 0
        var o = 0
        var n = 0
        
        for c in text {
            switch c {
            case "b": b += 1
            case "a": a += 1
            case "l": l += 1
            case "o": o += 1
            case "n": n += 1
            default: continue
            }
        }
        
        l /= 2
        o /= 2
        return min(b, a, l, o, n)
    }
}

// MARK: - 2. Generalized Solution using an Array

class Xoo1189_2 {
    func maxNumberOfBalloons(_ text: String) -> Int {
        0
    }
}
