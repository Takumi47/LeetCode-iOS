//
//  1411_NumberOfWaysToPaintNx3Grid.swift
//  LeetCode
//
//  Created by xander on 2021/7/4.
//

import Foundation

/*
 dp[i][0]: number of ways to paint i rows with 2 different colors at the ith row
 dp[i][1]: number of ways to paint i rows with 3 different colors at the ith row
 dp[1][0] = dp[1][1] = 6
 
 dp[i][0] = 3 x dp[i - 1][0] + 2 x dp[i - 1][1]
 dp[i][1] = 2 x dp[i - 1][0] + 2 x dp[i - 1][1]
 */
class Xoo1411 {
    func numOfWays(_ n: Int) -> Int {
        let M = 1_000_000_007
        var dp: [[Int]] = Array(repeating: [6, 6], count: n + 1)
        
        guard n > 1 else { return dp[1][0] + dp[1][1] }
        for i in 2...n {
            dp[i][0] = (3 * dp[i - 1][0] + 2 * dp[i - 1][1]) % M
            dp[i][1] = (2 * dp[i - 1][0] + 2 * dp[i - 1][1]) % M
        }
        return (dp[n][0] + dp[n][1]) % M
    }
}

class Xoo1411_1 {
    func numOfWays(_ n: Int) -> Int {
        let M = 1_000_000_007
        var dp: [Int] = [6, 6]
        
        guard n > 1 else { return dp[0] + dp[1] }
        for _ in 2...n {
            let tmp = dp[0]
            dp[0] = (3 * dp[0] + 2 * dp[1]) % M
            dp[1] = (2 * tmp + 2 * dp[1]) % M
        }
        return (dp[0] + dp[1]) % M
    }
}

/*
 Matrix Multiplication
 [dp[n][0] dp[n][1]] = [[3, 2], [2, 2]] x [dp[n - 1][0] dp[n - 1][1]]
 */
class Xoo1411_2 {
    let M = 1_000_000_007
    
    func numOfWays(_ n: Int) -> Int {
        var m: [[Int]] = [[3, 2], [2, 2]]
        var ans: [[Int]] = [[6], [6]]
        
        var n = n - 1
        while n > 0 {
            if n % 2 == 1 { ans = matrixMul(m, ans) }
            m = matrixMul(m, m)
            n = n >> 1
        }
        
        return (ans[0][0] + ans[1][0]) % M
    }
    
    private func matrixMul(_ a: [[Int]], _ b: [[Int]]) -> [[Int]] {
        let m = a.count
        let x = a[0].count
        let n = b[0].count
        var c: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            for j in 0..<n {
                for k in 0..<x {
                    c[i][j] = (c[i][j] + a[i][k] * b[k][j]) % M
                }
            }
        }
        return c
    }
}
