//
//  14_LongestCommonPrefix.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        ""
    }
}

// MARK: - 1. Horizontal scanning

class Xoo14_1 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        var prefix = strs[0]
        for str in strs {
            while !str.hasPrefix(prefix) {
                prefix.removeLast()
                if prefix.isEmpty { return "" }
            }
        }
        return prefix
    }
}

// MARK: - 2. Vertical scanning

class Xoo14_2 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        ""
    }
}

// MARK: - 3. Divide and conquer

class Xoo14_3 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        ""
    }
}

// MARK: - 4. Binary search

class Xoo14_4 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        ""
    }
}
