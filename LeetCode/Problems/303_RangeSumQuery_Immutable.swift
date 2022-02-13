//
//  303_RangeSumQuery_Immutable.swift
//  LeetCode
//
//  Created by xander on 2021/8/16.
//

import Foundation

class NumArray303 {
    private var prefixSum: [Int] = []
    
    init(_ nums: [Int]) {
        var sum = 0
        for num in nums {
            sum += num
            prefixSum.append(sum)
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left == 0 { return prefixSum[right] }
        return prefixSum[right] - prefixSum[left - 1]
    }
}

// MARK: - 1. Brute Force (TLE)

class NumArray303_1 {
    init(_ nums: [Int]) {
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        0
    }
}

// MARK: - 2. Caching

class NumArray303_2 {
    init(_ nums: [Int]) {
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        0
    }
}

// MARK: - 3. Caching

class NumArray303_3 {
    init(_ nums: [Int]) {
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        0
    }
}
