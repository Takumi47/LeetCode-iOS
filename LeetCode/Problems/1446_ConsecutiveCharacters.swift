//
//  1446_ConsecutiveCharacters.swift
//  LeetCode
//
//  Created by xander on 2021/12/13.
//

import Foundation

class Xoo1446 {
    func maxPower(_ s: String) -> Int {
        let arrayS = Array(s)
        let n = s.count
        var power = 1
        var count = 1
        for i in 1..<n {
            if arrayS[i] == arrayS[i - 1] {
                count += 1
            } else {
                count = 1
            }
            power = max(power, count)
        }
        return power
    }
}

// MARK: - 1. One Pass

class Xoo1446_1 {
    func maxPower(_ s: String) -> Int {
        0
    }
}
