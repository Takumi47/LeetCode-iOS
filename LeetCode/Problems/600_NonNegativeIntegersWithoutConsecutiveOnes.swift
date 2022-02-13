//
//  600_NonNegativeIntegersWithoutConsecutiveOnes.swift
//  LeetCode
//
//  Created by xander on 2021/7/25.
//

import Foundation

// https://www.itread01.com/content/1543730886.html
class Xoo600 {
    func findIntegers(_ n: Int) -> Int {
        0
    }
}

class Xoo600_A {
    func findIntegers(_ n: Int) -> Int {
        //return 1 + countValidInts(1, n)
        return 1 + countValidInts(1, n)
    }
    
    private func countValidInts(_ num: Int, _ limit: Int) -> Int {
        guard num <= limit else { return 0 }
        
        if num & 1 == 1 {
            return 1 + countValidInts((num << 1) | 0, limit)
        } else {
            return 1 + countValidInts((num << 1) | 0, limit) + countValidInts((num << 1) | 1, limit)
        }
    }
}

// https://www.youtube.com/watch?v=TE7Sj-Ab-NE
class Xoo600_B {
    func findIntegers(_ n: Int) -> Int {
        
        // dp[m]: m位01序列中不含連續1的序列個數
        var dp: [Int] = Array(repeating: 0, count: 33)
        dp[0] = 1
        dp[1] = 2
        for i in 2...32 {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        var num = n
        var digits: [Int] = Array(repeating: 0, count: 33)
        for i in 1...32 {
            digits[i] = num % 2
            num /= 2
        }
        
        var res = 0
        var i = 32
        while i >= 1 {
            if digits[i] == 0 {
                i -= 1
            } else {
                // 1. digits[i] = 0
                res += dp[i - 1]
                
                // 2. digits[i] = 1
                if i >= 2 && digits[i - 1] == 1 {
                    res += dp[i - 2]
                    return res
                } else {
                    i -= 2
                }
            }
        }
        return 1 + res
    }
}

// MARK: - 1. Brute Force (Time Limit Exceeded)

class Xoo600_1 {
    func findIntegers(_ n: Int) -> Int {
        var count = 0
        for i in 0...n {
            if check(i) { count += 1 }
        }
        return count
    }
    
    private func check(_ n: Int) -> Bool {
        var i = 31
        while i > 0 {
            if (n & (1 << i) != 0) && (n & (1 << (i - 1)) != 0) {
                return false
            }
            i -= 1
        }
        return true
    }
}

// MARK: - 2. Better Brute Force (Time Limit Exceeded)

class Xoo600_2 {
    func findIntegers(_ n: Int) -> Int {
        return find(0, 0, n, false)
    }

    /// - parameters:
    ///     - i: bit number
    ///     - sum: binary number generated till now
    ///     - num: the given number
    ///     - prev: a boolean variable that indicates whether the last prefix added was a 1 or a 0
    private func find(_ i: Int, _ sum: Int, _ num: Int, _ prev: Bool) -> Int {
        guard sum <= num else { return 0 }
        if (1 << i) > num { return 1 }
        
        if prev {
            return find(i + 1, sum, num, false)
        } else {
            return find(i + 1, sum, num, false) + find(i + 1, sum + (1 << i), num, true)
        }
    }
}

// MARK: - 3. Using Bit Manipulation

class Xoo600_3 {
    func findIntegers(_ n: Int) -> Int {
        var f: [Int] = Array(repeating: 0, count: 32)
        f[0] = 1
        f[1] = 2
        for i in 2..<f.count { f[i] = f[i - 1] + f[i - 2] }
        
        var res = 0
        var prevBit = 0
        var i = 30
        while i >= 0 {
            if n & (1 << i) != 0 {
                res += f[i]
                if prevBit == 1 { return res }
                prevBit = 1
            } else {
                prevBit = 0
            }
            i -= 1
        }
        return 1 + res
    }
}
