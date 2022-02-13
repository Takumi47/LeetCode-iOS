//
//  22_GenerateParentheses.swift
//  LeetCode
//
//  Created by xander on 2021/6/16.
//

import Foundation

class Xoo22 {
    func generateParenthesis(_ n: Int) -> [String] {
        []
    }
}

// MARK: - 1. Brute Force

class Xoo22_1 {
    func generateParenthesis(_ n: Int) -> [String] {
        var combinations: [String] = []
        generate("", n, 0, &combinations)
        return combinations
    }
    
    private func generate(_ current: String, _ n: Int, _ position: Int, _ combinations: inout [String]) {
        if position == 2 * n {
            if isValid(current) {
                combinations.append(current)
            }
        } else {
            generate(current + "(", n, position + 1, &combinations)
            generate(current + ")", n, position + 1, &combinations)
        }
    }
    
    private func isValid(_ combination: String) -> Bool {
        var balance = 0
        for char in combination {
            guard balance >= 0 else { return false }
            if char == "(" {
                balance += 1
            } else {
                balance -= 1
            }
        }
        return balance == 0
    }
}

// MARK: - 2. Backtracking

class Xoo22_2 {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [] }
        var combinations: [String] = []
        backtrack("(", n, 1, 0, &combinations)
        return combinations
    }
    
    private func backtrack(_ current: String, _ n: Int, _ open: Int, _ close: Int, _ combinations: inout [String]) {
        if current.count == 2 * n {
            combinations.append(current)
            return
        }
        
        if open < n {
            backtrack(current + "(", n, open + 1, close, &combinations)
        }
        
        if open > close {
            backtrack(current + ")", n, open, close + 1, &combinations)
        }
    }
}

// MARK: - 3. Closure Number

class Xoo22_3 {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [""] }

        var combinations: [String] = []
        for c in 0..<n {
            for left in generateParenthesis(c) {
                for right in generateParenthesis(n - 1 - c) {
                    combinations.append("(\(left))" + right)
                }
            }
        }
        return combinations
    }
}
