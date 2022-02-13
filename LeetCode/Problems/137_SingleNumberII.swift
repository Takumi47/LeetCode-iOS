//
//  137_SingleNumberII.swift
//  LeetCode
//
//  Created by xander on 2021/11/7.
//

import Foundation

class Xoo137 {
    func singleNumber(_ nums: [Int]) -> Int {
        var bits: [Int] = Array(repeating: 0, count: 32)
        for num in nums {
            for i in 0..<32 {
                bits[i] += (num >> i) & 1
                bits[i] %= 3
            }
        }
        
        var res = ""
        for bit in bits {
            res = "\(bit)" + res
        }
        return Int(Int32(bitPattern: UInt32(res, radix: 2)!))
    }
}

// MARK: - 1. HashSet

class Xoo137_1 {
    func singleNumber(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. HashMap

class Xoo137_2 {
    func singleNumber(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Bitwise Operators: NOT, AND and XOR

class Xoo137_3 {
    func singleNumber(_ nums: [Int]) -> Int {
        var seenOnce = 0
        var seenTwice = 0
        for num in nums {
            seenOnce = ~seenTwice & (seenOnce ^ num)
            seenTwice = ~seenOnce & (seenTwice ^ num)
        }
        return seenOnce
    }
}
