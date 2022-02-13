//
//  151_ReverseWordsInAString.swift
//  LeetCode
//
//  Created by xander on 2021/10/20.
//

import Foundation

class Xoo151 {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ")
            .reversed()
            .joined(separator: " ")
    }
}

// MARK: - 1. Built-in Split + Reverse

class Xoo151_1 {
    func reverseWords(_ s: String) -> String {
        let s = s.trimmingCharacters(in: .whitespaces)
        let words = s.components(separatedBy: .whitespaces)
        return words.reversed().filter { !$0.isEmpty }.joined(separator: " ")
    }
}

// MARK: - 2. Reverse the Whole String and Then Reverse Each Word

class Xoo151_2 {
    func reverseWords(_ s: String) -> String {
        ""
    }
}
