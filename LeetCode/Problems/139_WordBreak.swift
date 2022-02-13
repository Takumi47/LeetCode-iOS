//
//  139_WordBreak.swift
//  LeetCode
//
//  Created by xander on 2022/2/13.
//

import Foundation

class Xoo139 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var memo: [String: Bool] = [:]
        return dp(s, Set(wordDict), &memo)
    }
    
    private func dp(_ s: String, _ wordDict: Set<String>, _ memo: inout [String: Bool]) -> Bool {
        if wordDict.contains(s) { return true }
        if let res = memo[s] { return res }
        
        let n = s.count
        for i in 0..<min(n, 20) { // 1 <= wordDict[i].length <= 20
            let prefix = String(s.prefix(i + 1))
            let suffix = String(s.suffix(n - i - 1))
            if wordDict.contains(prefix) && dp(suffix, wordDict, &memo) {
                memo[s] = true
                return true
            }
        }
        memo[s] = false
        return false
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo139_1 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        return check(s, Set(wordDict), 0)
    }
    
    private func check(_ s: String, _ wordDict: Set<String>, _ start: Int) -> Bool {
        guard start < s.count else { return true }
        
        let chars = Array(s)
        for end in start..<min(s.count, 20) {
            let str = String(chars[start...end])
            if wordDict.contains(str) && check(s, wordDict, end + 1) {
                return true
            }
        }
        return false
    }
}

// MARK: - 2. Recursion with memoization

class Xoo139_2 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        false
    }
}

// MARK: - 3. Using Breadth-First-Search

class Xoo139_3 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        false
    }
}

// MARK: - 4. Using Dynamic Programming

class Xoo139_4 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        false
    }
}
