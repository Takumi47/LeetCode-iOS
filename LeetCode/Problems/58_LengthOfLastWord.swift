//
//  58_LengthOfLastWord.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo58 {
    func lengthOfLastWord(_ s: String) -> Int {
        0
    }
}

// MARK: - 1. String Index Manipulation

class Xoo58_1 {
    func lengthOfLastWord(_ s: String) -> Int {
        let s = Array(s)
        var length = 0
        var i = s.count - 1
        while i >= 0 && s[i] == " " {
            i -= 1
        }
        while i >= 0 && s[i] != " " {
            i -= 1
            length += 1
        }
        return length
    }
}

// MARK: - 2. One-loop Iteration

class Xoo58_2 {
    func lengthOfLastWord(_ s: String) -> Int {
        0
    }
}

// MARK: - 3. Built-in String Functions

class Xoo58_3 {
    func lengthOfLastWord(_ s: String) -> Int {
        0
    }
}
