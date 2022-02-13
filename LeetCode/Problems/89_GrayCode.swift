//
//  89_GrayCode.swift
//  LeetCode
//
//  Created by xander on 2021/7/1.
//

import Foundation

class Xoo89 {
    func grayCode(_ n: Int) -> [Int] {
        guard n > 1 else { return [0, 1] }
        var result: [String] = ["0", "1"]
        
        for _ in 2...n {
            
            var tmp1: [String] = []
            for x in result {
                tmp1.append("0" + x)
            }
            
            var tmp2: [String] = []
            for y in result.reversed() {
                tmp2.append("1" + y)
            }
            
            result = tmp1 + tmp2
        }
        
        return result.compactMap { Int($0, radix: 2) }
    }
}

class Xoo89_A {
    func grayCode(_ n: Int) -> [Int] {
        var dp: [[Int]] = Array(repeating: [], count: n + 1)
        dp[0] = [0]
        
        for i in 1...n {
            dp[i] = dp[i - 1]
            for x in dp[i - 1].reversed() {
                dp[i].append(x | 1 << (i - 1))
            }
        }
        
        return dp[n]
    }
}

// MARK: - 1. Backtracking

class Xoo89_1 {
    func grayCode(_ n: Int) -> [Int] {
        []
    }
}

// MARK: - 2. Recursion

class Xoo89_2 {
    func grayCode(_ n: Int) -> [Int] {
        []
    }
}

// MARK: - 3. Iteration

class Xoo89_3 {
    func grayCode(_ n: Int) -> [Int] {
        []
    }
}

// MARK: - 4. Iteration 2

class Xoo89_4 {
    func grayCode(_ n: Int) -> [Int] {
        []
    }
}

// MARK: - 5. Iteration with a single loop

class Xoo89_5 {
    func grayCode(_ n: Int) -> [Int] {
        []
    }
}
