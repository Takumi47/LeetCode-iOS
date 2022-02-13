//
//  926_FlipStringToMonotoneIncreasing.swift
//  LeetCode
//
//  Created by xander on 2021/8/10.
//

import Foundation

// MARK: - DP, prefix + suffix

class Xoo926 {
    func minFlipMonoIncr(_ s: String) -> Int {
        let n = s.count
        let arrayS = Array(s)
        var l: [Int] = Array(repeating: 0, count: n + 1) // s[0] ~ s[i]: (1 to 0) num of flip
        var r: [Int] = Array(repeating: 0, count: n + 1) // s[i] ~ s[n - 1]: (0 to 1) num of flip
        
        l[0] = arrayS[0] == "0" ? 0 : 1
        r[n - 1] = arrayS[n - 1] == "1" ? 0 : 1
        
        for i in 1..<n {
            l[i] = l[i - 1] + (arrayS[i] == "0" ? 0 : 1)
        }
        
        for i in (0..<(n - 1)).reversed() {
            r[i] = r[i + 1] + (arrayS[i] == "1" ? 0 : 1)
        }
        
        var ans = r[0]
        for i in 1...n {
            ans = min(ans, l[i - 1] + r[i])
        }
        return ans
    }
}

// MARK: - DP

class Xoo926_A {
    func minFlipMonoIncr(_ s: String) -> Int {
        0
    }
}

// MARK: - 1. Prefix Sums

class Xoo926_1 {
    func minFlipMonoIncr(_ s: String) -> Int {
        let n = s.count
        let arrayS = Array(s)
        
        var ones: [Int] = Array(repeating: 0, count: n)
        ones[0] = arrayS[0] == "1" ? 1 : 0
        for i in 1..<n {
            ones[i] = ones[i - 1] + (arrayS[i] == "1" ? 1 : 0)
        }
        
        var ans = n - ones[n - 1] // cost of 0 to 1
        for i in 0..<n {
            ans = min(ans, ones[i] + (n - 1 - i) - (ones[n - 1] - ones[i]))
        }
        return ans
    }
}
