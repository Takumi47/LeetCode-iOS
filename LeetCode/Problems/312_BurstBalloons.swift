//
//  312_BurstBalloons.swift
//  LeetCode
//
//  Created by xander on 2022/1/1.
//

import Foundation

class Xoo312 {
    func maxCoins(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Dynamic Programming (Naive)

class Xoo312_1 {
    func maxCoins(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming (Top-Down)

class Xoo312_2 {
    func maxCoins(_ nums: [Int]) -> Int {
        let n = nums.count + 2
        let nums = [1] + nums + [1]
        var memo: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        return dp(nums, 1, n - 2, &memo)
    }
    
    private func dp(_ nums: [Int], _ left: Int, _ right: Int, _ memo: inout [[Int]]) -> Int {
        guard left <= right else { return 0 }
        if memo[left][right] > 0 { return memo[left][right] }
        
        var res = 0
        for i in left...right {
            let gain = nums[left - 1] * nums[i] * nums[right + 1]
            let remaining = dp(nums, left, i - 1, &memo) + dp(nums, i + 1, right, &memo)
            res = max(res, gain + remaining)
        }
        memo[left][right] = res
        return res
    }
}

// MARK: - 3. Dynamic Programming (Bottom-Up)

class Xoo312_3 {
    func maxCoins(_ nums: [Int]) -> Int {
        0
    }
}
