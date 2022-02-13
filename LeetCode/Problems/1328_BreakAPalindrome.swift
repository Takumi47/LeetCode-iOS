//
//  1328_BreakAPalindrome.swift
//  LeetCode
//
//  Created by xander on 2021/9/24.
//

import Foundation

class Xoo1328 {
    func breakPalindrome(_ palindrome: String) -> String {
        ""
    }
}

// MARK: - 1. Greedy

class Xoo1328_1 {
    func breakPalindrome(_ palindrome: String) -> String {
        let n = palindrome.count
        guard n > 1 else { return "" }
        
        var chars = Array(palindrome)
        for i in 0..<(n / 2) {
            if chars[i] != "a" {
                chars[i] = "a"
                return String(chars)
            }
        }
        
        chars[n - 1] = "b"
        return String(chars)
    }
}
