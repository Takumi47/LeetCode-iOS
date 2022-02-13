//
//  509_FibonacciNumber.swift
//  LeetCode
//
//  Created by xander on 2022/2/5.
//

import Foundation

class Xoo509 {
    func fib(_ n: Int) -> Int {
        0
    }
}

// MARK: - 1. Recursion

class Xoo509_1 {
    func fib(_ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Bottom-Up Approach using Tabulation

class Xoo509_2 {
    func fib(_ n: Int) -> Int {
        0
    }
}

// MARK: - 3. Top-Down Approach using Memoization

class Xoo509_3 {
    func fib(_ n: Int) -> Int {
        var memo: [Int] = Array(repeating: 0, count: n + 1)
        return dp(n, &memo)
    }
    
    private func dp(_ n: Int, _ memo: inout [Int]) -> Int {
        guard n > 1 else { return n }
        if memo[n] == 0 {
            memo[n] = dp(n - 1, &memo) + dp(n - 2, &memo)
        }
        return memo[n]
    }
}

// MARK: - 4. Iterative Bottom-Up Approach

class Xoo509_4 {
    func fib(_ n: Int) -> Int {
        0
    }
}

// MARK: - 5. Matrix Exponentiation

class Xoo509_5 {
    func fib(_ n: Int) -> Int {
        0
    }
}

// MARK: - 6. Math

class Xoo509_6 {
    func fib(_ n: Int) -> Int {
        let goldenRatio = (1 + sqrt(5)) / 2
        return Int(round(pow(goldenRatio, Double(n)) / sqrt(5)))
    }
}
