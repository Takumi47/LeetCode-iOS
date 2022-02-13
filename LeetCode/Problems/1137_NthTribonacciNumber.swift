//
//  1137_NthTribonacciNumber.swift
//  LeetCode
//
//  Created by xander on 2021/9/24.
//

import Foundation

/*
 T0 = 0, T1 = 1, T2 = 1
 Tn+3 = Tn + Tn+1 + Tn+2, n >= 0
 
 Tn <= 2^31 - 1 = 2147483647
 */

class Xoo1137 {
    func tribonacci(_ n: Int) -> Int {
        var dp = [0, 1, 1]
        guard n > 2 else { return dp[n] }
        
        for i in 3...n {
            dp[i % 3] = dp.reduce(0, +)
        }
        return dp[n % 3]
    }
}

// MARK: - 1. Space Optimisation: Dynamic Programming

class Xoo1137_1 {
    func tribonacci(_ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Performance Optimisation: Recursion with Memoization

class Xoo1137_2 {
    func tribonacci(_ n: Int) -> Int {
        0
    }
}

// MARK: - 3. Performance Optimisation: Dynamic Programming

class Xoo1137_3 {
    func tribonacci(_ n: Int) -> Int {
        0
    }
}
