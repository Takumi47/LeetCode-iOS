//
//  1009_ComplementOfBase10Integer.swift
//  LeetCode
//
//  Created by xander on 2022/1/4.
//

import Foundation

class Xoo1009 {
    func bitwiseComplement(_ n: Int) -> Int {
        if n == 0 { return 1 }
        var mask = ~0
        while mask & n != 0 { mask <<= 1 }
        return ~n ^ mask
    }
}

// MARK: - 1. Flip Bit by Bit

class Xoo1009_1 {
    func bitwiseComplement(_ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Compute Bit Length and Construct 1-bits Bitmask

class Xoo1009_2 {
    func bitwiseComplement(_ n: Int) -> Int {
        0
    }
}

// MARK: - 3. Built-in Functions to Construct 1-bits Bitmask

class Xoo1009_3 {
    func bitwiseComplement(_ n: Int) -> Int {
        0
    }
}
