//
//  1220_CountVowelsPermutation.swift
//  LeetCode
//
//  Created by xander on 2021/7/4.
//

import Foundation

// MARK: - Matrix Multiplication

/*
 func fastPow(_ x: Int, _ n: Int) -> Int {
     var x = x
     var n = n
     
     var ans = x
     n -= 1
     while n > 0 {
         if n % 2 == 1 { ans *= x }
         x *= x
         n /= 2
     }
     return ans
 }
 */

class Xoo1220 {
    let M = 1_000_000_007
    
    /// Ans = M^(n-1) * [1,1,1,1,1]^T
    func countVowelPermutation(_ n: Int) -> Int {
        var m: [[Int]] = [
            [0, 1, 0, 0, 0], // a
            [1, 0, 1, 0, 0], // e
            [1, 1, 0, 1, 1], // i
            [0, 0, 1, 0, 1], // o
            [1, 0, 0, 0, 0]  // u
        ]
        var ans: [[Int]] = [[1], [1], [1], [1], [1]]
        
        var n = n - 1
        while n > 0 {
            if n % 2 == 1 {
                ans = matrixMul(m, ans)
            }
            m = matrixMul(m, m)
            n /= 2
        }
        
        let sum = ans.flatMap { $0 }.reduce(0, +)
        return sum % M
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

// MARK: - 1. Dynamic Programming (Bottom-up)

class Xoo1220_1 {
    func countVowelPermutation(_ n: Int) -> Int {
        let M = 1_000_000_007
        var aCount: [Int] = Array(repeating: 1, count: n)
        var eCount: [Int] = Array(repeating: 1, count: n)
        var iCount: [Int] = Array(repeating: 1, count: n)
        var oCount: [Int] = Array(repeating: 1, count: n)
        var uCount: [Int] = Array(repeating: 1, count: n)
        
        for i in 1..<n {
            aCount[i] = (eCount[i - 1] + iCount[i - 1] + uCount[i - 1]) % M
            eCount[i] = (aCount[i - 1] + iCount[i - 1]) % M
            iCount[i] = (eCount[i - 1] + oCount[i - 1]) % M
            oCount[i] = iCount[i - 1] % M
            uCount[i] = (iCount[i - 1] + oCount[i - 1]) % M
        }
        
        return (aCount[n - 1] + eCount[n - 1] + iCount[n - 1] + oCount[n - 1] + uCount[n - 1]) % M
    }
}

// MARK: - 2. Dynamic Programming (Bottom-up) with Optimized Space

class Xoo1220_2 {
    func countVowelPermutation(_ n: Int) -> Int {
        let M = 1_000_000_007
        var counts = Array(repeating: 1, count: 5) // [a,e,i,o,u]
        for _ in 1..<n {
            let a = (counts[1] + counts[2] + counts[4]) % M
            let e = (counts[0] + counts[2]) % M
            let i = (counts[1] + counts[3]) % M
            let o = counts[2] % M
            let u = (counts[2] + counts[3]) % M
            counts = [a, e, i, o, u]
        }
        return counts.reduce(0, +) % M
    }
}

// MARK: - 3. Dynamic Programming (Top-down, Recursion)

class Xoo1220_3 {
    func countVowelPermutation(_ n: Int) -> Int {
        0
    }
}
