//
//  125_ValidPalindrome.swift
//  LeetCode
//
//  Created by xander on 2022/1/6.
//

import Foundation

class Xoo125 {
    func isPalindrome(_ s: String) -> Bool {
        let s = Array(s.lowercased())
        var i = 0
        var j = s.count - 1
        while i < j {
            while i < j && !(s[i].isNumber || s[i].isLetter) { i += 1 }
            while i < j && !(s[j].isNumber || s[j].isLetter) { j -= 1 }
            if s[i] != s[j] { return false }
            i += 1
            j -= 1
        }
        return true
    }
}

// MARK: - 1. Compare with Reverse

class Xoo125_1 {
    func isPalindrome(_ s: String) -> Bool {
        false
    }
}

// MARK: - 2. Two Pointers

class Xoo125_2 {
    func isPalindrome(_ s: String) -> Bool {
        false
    }
}
