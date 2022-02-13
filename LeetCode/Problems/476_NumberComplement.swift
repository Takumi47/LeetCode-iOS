//
//  476_NumberComplement.swift
//  LeetCode
//
//  Created by xander on 2021/12/27.
//

import Foundation

class Xoo476 {
    func findComplement(_ num: Int) -> Int {
        var mask = ~0
        while (mask & num) != 0 { mask <<= 1 }
        return ~num ^ mask
    }
}

// MARK: - 1. Flip Bit by Bit

class Xoo476_1 {
    func findComplement(_ num: Int) -> Int {
        0
    }
}

// MARK: - 2. Compute Bit Length and Construct 1-bits Bitmask

class Xoo476_2 {
    func findComplement(_ num: Int) -> Int {
        0
    }
}

// MARK: - 3. Built-in Functions to Construct 1-bits Bitmask

class Xoo476_3 {
    func findComplement(_ num: Int) -> Int {
        0
    }
}

// MARK: - 4. highestOneBit OpenJDK algorithm from Hacker's Delight

class Xoo476_4 {
    func findComplement(_ num: Int) -> Int {
        0
    }
}
