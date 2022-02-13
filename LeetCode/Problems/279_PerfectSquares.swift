//
//  279_PerfectSquares.swift
//  LeetCode
//
//  Created by xander on 2021/10/14.
//

import Foundation

class Xoo279 {
    
    /** dp[i] = min{ dp[n - x^2] + 1 } for all x */
    func numSquares(_ n: Int) -> Int {
        var dp: [Int] = Array(repeating: Int.max, count: n + 1)
        dp[0] = 0
        for i in 1...n {
            for j in 1...Int(sqrt(Double(i))) {
                dp[i] = min(dp[i], dp[i - j * j] + 1)
            }
        }
        return dp[n]
    }
}

// MARK: - 1. Brute-force Enumeration (TLE)

class Xoo279_1 {
    func numSquares(_ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming

class Xoo279_2 {
    func numSquares(_ n: Int) -> Int {
        0
    }
}

// MARK: - 3. Greedy Enumeration

class Xoo279_3 {
    func numSquares(_ n: Int) -> Int {
        0
    }
}

// MARK: - 4. Greedy + BFS

class Xoo279_4 {
    func numSquares(_ n: Int) -> Int {
        0
    }
}

// MARK: - 5. Mathematics

class Xoo279_5 {
    func numSquares(_ n: Int) -> Int {
        0
    }
}
