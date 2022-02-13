//
//  136_SingleNumber.swift
//  LeetCode
//
//  Created by xander on 2021/11/7.
//

import Foundation


/*
 XOR
 
 1.
 0^1 = 1
 0^0 = 0
 1^1 = 0
 A^A = 0
 0^A = A
 
 2.
 A^B = B^A
 */

class Xoo136 {
    func singleNumber(_ nums: [Int]) -> Int {
        var xorSum = 0
        for num in nums {
            xorSum ^= num
        }
        return xorSum
    }
}

// MARK: - 1. List operation

class Xoo136_1 {
    func singleNumber(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Hash Table

class Xoo136_2 {
    func singleNumber(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Math

class Xoo136_3 {
    func singleNumber(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 4. Bit Manipulation (XOR)

class Xoo136_4 {
    func singleNumber(_ nums: [Int]) -> Int {
        nums.reduce(0, ^)
    }
}
