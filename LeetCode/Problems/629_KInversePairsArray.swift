//
//  629_KInversePairsArray.swift
//  LeetCode
//
//  Created by xander on 2021/6/19.
//

import Foundation

class Xoo629 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo629_1 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        0
    }
}

// MARK: - 2. Using Recursion with Memoization

class Xoo629_2 {
    
    /* 1 <= n <= 1000, 0 <= k <= 1000 */
    private var memo: [[Int?]] = Array(repeating: Array(repeating: nil, count: 1001), count: 1001)
    
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        // 1.
        if n == 0 { return 0 }
        
        // 2.
        if k == 0 { return 1 }
        
        // 3.
        if let c = memo[n][k] { return c }
        
        var count = 0
        for i in 0...min(k, n - 1) {
            count += kInversePairs(n - 1, k - i) % 1_000_000_007
        }
        memo[n][k] = count
        return count
    }
}

// MARK: - 3. Dynamic Programming

class Xoo629_3 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
        
        for i in 1...n {
            for j in 0...k {
                if j == 0 {
                    dp[i][j] = 1
                } else {
                    for k in 0...min(j, i - 1) {
                        dp[i][j] += dp[i - 1][j - k] % 1_000_000_007
                    }
                }
            }
        }
        
        return dp[n][k]
    }
}

// MARK: - 4. Dynamic Programming with Cumulative Sum

class Xoo629_4 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        
        // dp: the cumulative sum upto the current element in a row
        // dp[i][j] = count(i, j) + (dp[i][0] + dp[i][1] + ... + dp[i][j - 1])
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
        let M = 1_000_000_007
        for i in 1...n {
            for j in 0...k {
                if j == 0 {
                    dp[i][j] = 1
                } else {
                    let val = (dp[i - 1][j] - ((j - i >= 0) ? dp[i - 1][j - i] : 0) + M) % M
                    dp[i][j] = (dp[i][j - 1] + val) % M
                }
            }
        }
        return (dp[n][k] - ((k > 0) ? dp[n][k - 1] : 0) + M) % M
    }
}

// MARK: - 5. Another Optimized Dynamic Programming Approach

class Xoo629_5 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
        let M = 1_000_000_007
        
        for i in 1...n {
            for j in 0...k where j <= i * (i - 1) / 2 {
                if i == 1 && j == 0 {
                    dp[i][j] = 1
                    break
                }
                
                if j == 0 {
                    dp[i][j] = 1
                } else {
                    let val = (dp[i - 1][j] - ((j - i >= 0) ? dp[i - 1][j - i] : 0) + M) % M
                    dp[i][j] = (dp[i][j - 1] + val) % M
                }
            }
        }
        
        return dp[n][k]
    }
}

// MARK: - 6. Once Again Memoization

class Xoo629_6 {
    
    /* 1 <= n <= 1000, 0 <= k <= 1000 */
    let M = 1_000_000_007
    private var memo: [[Int?]] = Array(repeating: Array(repeating: nil, count: 1001), count: 1001)
    
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        return (invPairs(n, k) - ((k > 0) ? invPairs(n, k - 1) : 0) + M) % M
    }
    
    private func invPairs(_ n: Int, _ k: Int) -> Int {
        if n == 0 { return 0 }
        if k == 0 { return 1 }
        if let c = memo[n][k] { return c }
        
        let val = (invPairs(n - 1, k) - ((k - n >= 0) ? invPairs(n - 1, k - n) : 0) + M) % M
        memo[n][k] = (invPairs(n, k - 1) + val) % M
        return memo[n][k]!
    }
}

// MARK: - 7. 1-D Dynamic Programming

class Xoo629_7 {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        var dp: [Int] = Array(repeating: 0, count: k + 1)
        let M = 1_000_000_007
        
        for i in 1...n {
            var temp: [Int] = Array(repeating: 0, count: k + 1)
            
            // 1.
            temp[0] = 1
            for j in 1..<(k + 1) {
                let val = (dp[j] - ((j - i >= 0) ? dp[j - i] : 0) + M) % M
                temp[j] = (temp[j - 1] + val) % M
            }
            
            // 2.
//            for j in 0...k {
//                if j == 0 {
//                    temp[0] = 1
//                } else {
//                    let val = (dp[j] - ((j - i >= 0) ? dp[j - i] : 0) + M) % M
//                    temp[j] = (temp[j - 1] + val) % M
//                }
//            }
            
            dp = temp
        }
        
        return (dp[k] - ((k > 0) ? dp[k - 1] : 0) + M) % M
    }
}
