//
//  1047_RemoveAllAdjacentDuplicatesInString.swift
//  LeetCode
//
//  Created by xander on 2021/6/28.
//

import Foundation

class Xoo1047 {
    func removeDuplicates(_ s: String) -> String {
        var stack = ""
        for c in s {
            if let t = stack.last, t == c {
                _ = stack.popLast()
            } else {
                stack.append(c)
            }
        }
        return stack
    }
}

// MARK: - 1. Replace

class Xoo1047_1 {
    func removeDuplicates(_ s: String) -> String {
        ""
    }
}

// MARK: - 2. Stack

class Xoo1047_2 {
    func removeDuplicates(_ s: String) -> String {
        ""
    }
}
