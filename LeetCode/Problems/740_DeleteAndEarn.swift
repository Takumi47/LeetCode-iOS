//
//  740_DeleteAndEarn.swift
//  LeetCode
//
//  Created by xander on 2022/2/6.
//

import Foundation

class Xoo740 {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.max() ?? nums[0]
        var points: [Int] = Array(repeating: 0, count: n + 1)
        for num in nums {
            points[num] += num
        }
        return rob(points)
    }
    
    /** 198. House Robber */
    private func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var dp1 = 0
        var dp2 = 0
        for i in 0..<nums.count {
            let dp = max(dp1, dp2 + nums[i])
            dp2 = dp1
            dp1 = dp
        }
        return dp1
    }
}

// MARK: - 1. Dynamic Programming

class Xoo740_1 {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        0
    }
}
