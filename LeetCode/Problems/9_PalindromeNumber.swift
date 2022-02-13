//
//  9_PalindromeNumber.swift
//  LeetCode
//
//  Created by xander on 2021/7/14.
//

import Foundation

class Xoo9 {
    func isPalindrome(_ x: Int) -> Bool {
        "\(x)" == String("\(x)".reversed())
    }
}

// MARK: - 1. Revert half of the number

class Xoo9_1 {
    func isPalindrome(_ x: Int) -> Bool {
        false
    }
}
