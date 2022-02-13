//
//  1015_SmallestIntegerDivisibleByK.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo1015 {
    func smallestRepunitDivByK(_ k: Int) -> Int {
        0
    }
}

// MARK: - 1. Checking Loop

class Xoo1015_1 {
    func smallestRepunitDivByK(_ k: Int) -> Int {
        var remainder = 1
        for length in 1...k {
            if remainder % k  == 0 { return length }
            remainder = (remainder * 10 + 1) % k
        }
        return -1
    }
}
