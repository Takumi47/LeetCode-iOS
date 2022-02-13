//
//  7_ReverseInteger.swift
//  LeetCode
//
//  Created by xander on 2021/7/10.
//

import Foundation

class Xoo7 {
    /// [-2^31, 2^31 - 1]
    func reverse(_ x: Int) -> Int {
        let y = Int(String("\(abs(x))".reversed())) ?? 0
        guard (-(1<<31)...(1<<31 - 1)) ~= y else { return 0 }
        return (x < 0 ? -1 : 1) * y
    }
}

// MARK: - 1.

class Xoo7_1 {
    func reverse(_ x: Int) -> Int {
        0
    }
}
