//
//  16_3SumClosest.swift
//  LeetCode
//
//  Created by xander on 2021/7/28.
//

import Foundation

class Xoo16 {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}

// MARK: - 1. Two Pointers

class Xoo16_1 {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let n = nums.count
        let nums = nums.sorted()
        
        var diff = Int.max
        for i in 0..<n {
            var j = i + 1
            var k = n - 1
            while j < k {
                let sum = nums[i] + nums[j] + nums[k]
                if abs(target - sum) < abs(diff) {
                    diff = target - sum
                }
                
                if diff == 0 { return target }
                if sum < target {
                    j += 1
                } else {
                    k -= 1
                }
            }
        }
        return target - diff
    }
}

// MARK: - 2. Binary Search

class Xoo16_2 {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}
