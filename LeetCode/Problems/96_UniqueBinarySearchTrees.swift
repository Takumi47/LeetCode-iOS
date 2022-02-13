//
//  96_UniqueBinarySearchTrees.swift
//  LeetCode
//
//  Created by xander on 2021/9/3.
//

import Foundation

class Xoo96 {
    func numTrees(_ n: Int) -> Int {
        var res: [Int] = Array(repeating: 0, count: n + 1)
        res[0] = 1
        res[1] = 1
        
        guard n > 1 else { return res[n] }
        
        for i in 2...n {
            for j in 1...i {
                res[i] += res[j - 1] * res[i - j]
            }
        }
        
        return res[n]
    }
}

class Xoo96_A {
    
    /*
     Note: bottom up
     */
    func numTrees(_ n: Int) -> Int {
        var dp: [Int] = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 1...i {
                dp[i] += dp[j - 1] * dp[i - j]
            }
        }
        return dp[n]
    }
}

/*
 Catalan
 1. h(n) = h(n - 1) * (4n - 2)/(n + 1), h(0) = 1
 2. h(n) = C(2n, n) - C(2n, n + 1), h(0) = 1
 */
class Xoo96_B {
    func numTrees(_ n: Int) -> Int {
        var h = 1
        for i in 1...n {
            h = h * (4 * i - 2) / (i + 1)
        }
        return h
    }
}

// MARK: - 1. Dynamic Programming

class Xoo96_1 {
    func numTrees(_ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Mathematical Deduction

class Xoo96_2 {
    /// Catalan number
    /// Follow up:
    /// 1. n nodes, how many structures of binary trees => h(n)
    /// 2. n pairs of parenthesis, how many valid sequences => h(n)
    /// 3. full binary tree: for all nodes, they either have no children or have two children. 2n+1 nodes, how many structures of full binary trees => h(n)
    func numTrees(_ n: Int) -> Int {
        let a = n + 1
        
        var b = 1
        for i in 1...n {
            b *= i
        }
        
        var c: Double = 1
        for i in ((n + 1)...2 * n).reversed() {
            c *= Double(i)
        }

        return Int(round(c / Double(a * b)))
    }
}
