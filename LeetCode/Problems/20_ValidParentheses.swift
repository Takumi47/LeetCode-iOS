//
//  20_ValidParentheses.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo20 {
    func isValid(_ s: String) -> Bool {
        false
    }
}

// MARK: - 1. Stacks

class Xoo20_1 {
    func isValid(_ s: String) -> Bool {
        let map: [Character: Character] = [")": "(", "]": "[", "}": "{"]
        let stack = Stack<Character>()
        for c in s {
            if let bracket = map[c] {
                if bracket != stack.pop() {
                    return false
                }
            } else {
                stack.push(c)
            }
        }
        return stack.isEmpty
    }
}
