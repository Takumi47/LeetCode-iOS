//
//  13_RomainToInteger.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo13 {
    func romanToInt(_ s: String) -> Int {
        let map: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var ans = 0
        var prev = 0
        for c in s {
            guard let curr = map[c] else { continue }
            ans += curr
            if prev < curr {
                ans -= 2 * prev
            }
            prev = curr
        }
        return ans
    }
}

// MARK: - 1. Left-to-Right Pass

class Xoo13_1 {
    func romanToInt(_ s: String) -> Int {
        0
    }
}

// MARK: - 2. Left-to-Right Pass Improved

class Xoo13_2 {
    func romanToInt(_ s: String) -> Int {
        0
    }
}

// MARK: - 3. Right-to-Left Pass

class Xoo13_3 {
    func romanToInt(_ s: String) -> Int {
        0
    }
}
