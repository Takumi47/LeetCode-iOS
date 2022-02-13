//
//  639_DecodeWaysII.swift
//  LeetCode
//
//  Created by xander on 2021/7/11.
//

import Foundation

// MARK: - DP

class Xoo639 {
    func numDecodings(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        let M = 1_000_000_007
        let chars = Array(s)
        var dp = [1, ways(chars[0])]
        for i in 1..<s.count {
            let si = chars[i]
            let si_1 = chars[i - 1]
            let dpi = (ways(si) * dp[1] + ways(si_1, si) * dp[0]) % M
            dp[0] = dp[1]
            dp[1] = dpi
        }
        return dp[1]
    }
    
    private func ways(_ s: Character) -> Int {
        if s == "0" { return 0 }
        if s == "*" { return 9 }
        return 1
    }
    
    private func ways(_ s1: Character, _ s2: Character) -> Int {
        if s1 == "*" && s2 == "*" {
            return 15
        } else if s1 == "*" {
            let num = s2.asciiValue! - Character("0").asciiValue!
            return num >= 0 && num <= 6 ? 2 : 1
        } else if s2 == "*" {
            switch s1 {
            case "1": return 9
            case "2": return 6
            default: return 0
            }
        } else {
            let num = (s1.asciiValue! - Character("0").asciiValue!) * 10 + (s2.asciiValue! - Character("0").asciiValue!)
            return num >= 10 && num <= 26 ? 1 : 0
        }
    }
}

// MARK: - 1.

class Xoo639_1 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}

// MARK: - 2.

class Xoo639_2 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}

// MARK: - 3.

class Xoo639_3 {
    func numDecodings(_ s: String) -> Int {
        0
    }
}


/*
 class Solution {
     func numDecodings(_ s: String) -> Int {
         guard !s.isEmpty else { return 0 }
         let M = 1_000_000_007
         var dp = [1, ways(s[0])]
         for i in 1..<s.count {
             let dpi = (ways(s[i]) * dp[1] + ways(s[i - 1], s[i]) * dp[0]) % M
             dp[0] = dp[1]
             dp[1] = dpi
         }
         return dp[1]
     }
     private func ways(_ s: String) -> Int {
         if s == "0" { return 0 }
         if s == "*" { return 9 }
         return 1
     }
     private func ways(_ s1: String, _ s2: String) -> Int {
         if s1 == "*" && s2 == "*" {
             return 15
         } else if s1 == "*" {
             let num = Character(s2).asciiValue! - Character("0").asciiValue!
             return num >= 0 && num <= 6 ? 2 : 1
         } else if s2 == "*" {
             switch s1 {
                 case "1": return 9
                 case "2": return 6
                 default: return 0
             }
         } else {
             let num = (Character(s1).asciiValue! - Character("0").asciiValue!) * 10 - (Character(s2).asciiValue! - Character("0").asciiValue!)
             return num >= 0 && num <= 26 ? 1 : 0
         }
     }
 }
 extension String {
     subscript(_ i: Int) -> String {
         String(self[self.index(self.startIndex, offsetBy: i)])
     }
 }
 
 */
