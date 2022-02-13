//
//  238_ProductOfArrayExceptSelf.swift
//  LeetCode
//
//  Created by xander on 2021/11/27.
//

import Foundation

class Xoo238 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 1. Left and Right product lists

class Xoo238_1 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var l: [Int] = Array(repeating: 1, count: n)
        var r: [Int] = Array(repeating: 1, count: n)
        var ans: [Int] = Array(repeating: 1, count: n)
        
        // Left
        for i in 1..<n {
            l[i] = l[i - 1] * nums[i - 1]
        }
        
        // Right
        for i in (0..<n - 1).reversed() {
            r[i] = r[i + 1] * nums[i + 1]
        }
        
        for i in 0..<n {
            ans[i] = l[i] * r[i]
        }
        
        return ans
    }
}

// MARK: - 2. O(1) space approach

class Xoo238_2 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var ans: [Int] = Array(repeating: 1, count: n)
        
        for i in 1..<n {
            ans[i] = ans[i - 1] * nums[i - 1]
        }
        
        var r = 1
        for i in (0..<n).reversed() {
            ans[i] *= r
            r *= nums[i]
        }
        
        return ans
    }
}
