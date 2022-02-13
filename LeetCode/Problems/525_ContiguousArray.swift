//
//  525_ContiguousArray.swift
//  LeetCode
//
//  Created by xander on 2022/2/4.
//

import Foundation

class Xoo525 {
    func findMaxLength(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo525_1 {
    func findMaxLength(_ nums: [Int]) -> Int {
        let n = nums.count
        var maxLen = 0
        for i in 0..<n {
            var zeroes = 0
            var ones = 0
            for j in i..<n {
                if nums[j] == 0 {
                    zeroes += 1
                } else {
                    ones += 1
                }
                
                if zeroes == ones {
                    maxLen = max(maxLen, j - i + 1)
                }
            }
        }
        return maxLen
    }
}

// MARK: - 2. Using Extra Array

class Xoo525_2 {
    func findMaxLength(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        var pos: [Int] = Array(repeating: Int.min, count: 2 * n + 1)
        pos[n] = -1
        var sum = 0
        var maxLen = 0
        for i in 0..<n {
            sum += (nums[i] == 0 ? -1 : 1)
            
            if pos[sum + n] != Int.min {
                maxLen = max(maxLen, i - pos[sum + n])
            } else {
                pos[sum + n] = i
            }
        }
        return maxLen
    }
}

// MARK: - 3. Using HashMap

class Xoo525_3 {
    func findMaxLength(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        var pos: [Int: Int] = [0: -1] // [prefixSum: firstIndex]
        var sum = 0
        var maxLen = 0
        for i in 0..<n {
            sum += (nums[i] == 0 ? -1 : 1)
            
            if let p = pos[sum] {
                maxLen = max(maxLen, i - p)
            } else {
                pos[sum] = i
            }
        }
        return maxLen
    }
}
