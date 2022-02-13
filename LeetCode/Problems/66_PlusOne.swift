//
//  66_PlusOne.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        let n = digits.count
        for i in (0..<n).reversed() {
            if digits[i] == 9 {
                digits[i] = 0
            } else {
                digits[i] += 1
                return digits
            }
        }
        digits.insert(1, at: 0)
        return digits
    }
}

// MARK: - 1. Schoolbook Addition with Carry

class Xoo66_1 {
    func plusOne(_ digits: [Int]) -> [Int] {
        []
    }
}
