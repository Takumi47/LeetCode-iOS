//
//  91_DecodeWays.swift
//  LeetCode
//
//  Created by xander on 2021/7/11.
//

import Foundation

// MARK: - Recursion with memoization

class Xoo91 {
    func numDecodings(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var memo: [String: Int] = ["": 1]
        return ways(s, &memo)
    }
    
    private func ways(_ s: String, _ memo: inout [String: Int]) -> Int {
        guard memo[s] == nil else { return memo[s]! }
        let arrayS = Array(s)
        if arrayS[0] == "0" { return 0 }
        if arrayS.count == 1 { return 1 }
        
        let sub1 = ways(String(arrayS[1...]), &memo)
        var sub2 = 0
        if let code = Int(String(arrayS[0...1])), code <= 26 {
            sub2 = ways(String(arrayS[2...]), &memo)
        }
        
        memo[s] = sub1 + sub2
        return sub1 + sub2
    }
}

//class Xoo91 {
//    func numDecodings(_ s: String) -> Int {
//        guard !s.isEmpty else { return 0 }
//        var memo: [String: Int] = ["": 1]
//        return ways(s, &memo)
//    }
//    
//    private func ways(_ s: String, _ memo: inout [String: Int]) -> Int {
//        guard memo[s] == nil else { return memo[s]! }
//        if s[0] == "0" { return 0 }
//        if s.count == 1 { return 1 }
//        
//        let sub1 = ways(s[1...], &memo)
//        var sub2 = 0
//        if let code = Int(s[0...1]), code <= 26 {
//            sub2 = ways(s[2...], &memo)
//        }
//        
//        memo[s] = sub1 + sub2
//        return sub1 + sub2
//    }
//}

class Xoo91_A {
    func numDecodings(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var memo: [Int: Int] = [:]
        return ways(s, 0, s.count - 1, &memo)
    }
    
    private func ways(_ s: String, _ start: Int, _ end: Int, _ memo: inout [Int: Int]) -> Int {
        guard start <= end else { return 1 } // Empty
        if let way = memo[start] { return way }
        if s[start] == "0" { return 0 }
        if start == end { return 1 } // Single digit
        
        let sub1 = ways(s, start + 1, end, &memo)
        var sub2 = 0
        if let code = Int(s[start...(start + 1)]), code <= 26 {
            sub2 = ways(s, start + 2, end, &memo)
        }
        
        memo[start] = sub1 + sub2
        return sub1 + sub2
    }
}

// MARK: - DP

class Xoo91_B {
    
    /// dp[i]: ways to decode s[0]...s[i]
    func numDecodings(_ s: String) -> Int {
        let chars = Array(s)
        guard !chars.isEmpty && chars[0] != "0" else { return 0 }
        if chars.count == 1 { return 1 }
        
        var w1 = 1 // dp[i - 1]
        var w2 = 1 // dp[i - 2]
        for i in 1..<chars.count {
            var w = 0
            guard isValid(chars[i]) || isValid(chars[i - 1], chars[i]) else { return 0 }
            if isValid(chars[i]) { w += w1 }
            if isValid(chars[i - 1], chars[i]) { w += w2 }
            w2 = w1
            w1 = w
        }
        return w1
    }
    
    private func isValid(_ s: Character) -> Bool {
        s != "0"
    }
    
    private func isValid(_ c1: Character, _ c2: Character) -> Bool {
        let num = (c1.asciiValue! - Character("0").asciiValue!) * 10
            + (c2.asciiValue! - Character("0").asciiValue!)
        return num >= 10 && num <= 26
    }
}

// MARK: - 1.

class Xoo91_1 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}

// MARK: - 2.

class Xoo91_2 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}

// MARK: - 3.

class Xoo91_3 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}
