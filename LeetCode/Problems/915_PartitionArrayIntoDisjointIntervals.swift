//
//  915_PartitionArrayIntoDisjointIntervals.swift
//  LeetCode
//
//  Created by xander on 2021/7/22.
//

import Foundation

class Xoo915 {
    func partitionDisjoint(_ nums: [Int]) -> Int {
        var leftSize = 1
        var leftMax = nums[0]
        var currMax = nums[0]
        for i in 1..<nums.count {
            if leftMax <= nums[i] {
                currMax = max(currMax, nums[i])
            } else {
                leftMax = currMax
                leftSize = i + 1
            }
        }
        return leftSize
    }
}

// MARK: - 1. Next Array

class Xoo915_1 {
    func partitionDisjoint(_ nums: [Int]) -> Int {
        let n = nums.count
        var maxLeft: [Int] = Array(repeating: 0, count: n)
        var minRight: [Int] = Array(repeating: 0, count: n)
        
        var curr = nums[0]
        for i in 0..<n {
            if nums[i] > curr { curr = nums[i] }
            maxLeft[i] = curr
        }
        
        curr = nums[n - 1]
        for i in (0..<n).reversed() {
            if nums[i] < curr { curr = nums[i] }
            minRight[i] = curr
        }
        
        for i in 1..<n {
            if maxLeft[i - 1] <= minRight[i] {
                return i
            }
        }
        return -1
    }
}
