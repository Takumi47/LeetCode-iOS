//
//  131_PalindromePartitioning.swift
//  LeetCode
//
//  Created by xander on 2021/8/8.
//

import Foundation

/*
 Time Complexity: O(N^2)
 */
class Xoo131 {
    func partition(_ s: String) -> [[String]] {
        let n = s.count
        let s = Array(s)
        var dp: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
        
        // Pre-process
        for i in 0..<n { dp[i][i] = true }
        for i in 0..<n - 1 { dp[i][i + 1] = (s[i] == s[i + 1]) }
        if n >= 3 {
            for len in 3...n {
                for start in 0...(n - len) {
                    let end = start + len - 1
                    if s[start] == s[end] && dp[start + 1][end - 1] {
                        dp[start][end] = true
                    } else {
                        dp[start][end] = false
                    }
                }
            }
        }
        
        // DFS
        var ans: [[String]] = []
        var curr: [String] = []
        dfs(s, 0, &ans, &curr, dp)
        return ans
    }
    
    private func dfs(_ s: [Character], _ start: Int, _ ans: inout [[String]], _ curr: inout [String], _ dp: [[Bool]]) {
        guard start < s.count else { return ans.append(curr) }
        for end in start..<s.count {
            if dp[start][end] {
                curr.append(String(s[start...end]))
                dfs(s, end + 1, &ans, &curr, dp)
                curr.removeLast()
            }
        }
    }
}

// MARK: - 1. Backtracking

/*
 Time Complexity: O(N*2^N)
 */
class Xoo131_1 {
    func partition(_ s: String) -> [[String]] {
        let s = Array(s)
        var res: [[String]] = []
        var curr: [String] = []
        dfs(s, 0, &res, &curr)
        return res
    }

    private func dfs(_ s: [Character], _ start: Int, _ res: inout [[String]], _ curr: inout [String]) {
        guard start < s.count else { return res.append(curr) }
        for end in start..<s.count {
            if isPalindrome(s, start, end) {
                curr.append(String(s[start...end]))
                dfs(s, end + 1, &res, &curr)
                curr.remove(at: curr.count - 1)
            }
        }
    }

    private func isPalindrome(_ s: [Character], _ low: Int, _ high: Int) -> Bool {
        var l = low
        var h = high
        while l < h {
            if s[l] != s[h] { return false }
            l += 1
            h -= 1
        }
        return true
    }
}

// MARK: - 2. Backtracking with Dynamic Programming

class Xoo131_2 {
    func partition(_ s: String) -> [[String]] {
        []
    }
}
