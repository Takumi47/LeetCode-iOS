//
//  1239_MaximumLengthOfAConcatenatedStringWithUniqueCharacters.swift
//  LeetCode
//
//  Created by xander on 2021/9/23.
//

import Foundation

class Xoo1239 {
    func maxLength(_ arr: [String]) -> Int {
        0
    }
}

// MARK: - 1. Iterative

class Xoo1239_1 {
    func maxLength(_ arr: [String]) -> Int {
        var results: [String] = [""]
        var best = 0
        for word in arr {
            let length = results.count
            for i in 0..<length {
                let newStr = results[i] + word
                let newStrSet = Set(newStr)
                guard newStr.count == newStrSet.count else { continue }
                results.append(newStr)
                best = max(best, newStr.count)
            }
        }
        return best
    }
}

// MARK: - 2. Backtracking

class Xoo1239_2 {
    func maxLength(_ arr: [String]) -> Int {
        0
    }
}

// MARK: - 3. Recursion

class Xoo1239_3 {
    func maxLength(_ arr: [String]) -> Int {
        0
    }
}
