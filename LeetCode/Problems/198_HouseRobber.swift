//
//  198_HouseRobber.swift
//  LeetCode
//
//  Created by xander on 2021/12/2.
//

import Foundation

class Xoo198 {
    func rob(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Recursion with Memoization (Top Down)

class Xoo198_1 {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        var memo: [Int] = Array(repeating: -1, count: n)
        return rob(nums, n - 1, &memo)
    }
    
    private func rob(_ nums: [Int], _ i: Int, _ memo: inout [Int]) -> Int {
        guard i >= 0 else { return 0 }
        if memo[i] >= 0 { return memo[i] }
        memo[i] = max(rob(nums, i - 2, &memo) + nums[i], rob(nums, i - 1, &memo))
        return memo[i]
    }
}

// MARK: - 2. Dynamic Programming (Bottom Up)

class Xoo198_2 {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp: [Int] = Array(repeating: 0, count: n)
        for i in 0..<n {
            dp[i] = max((i >= 2 ? dp[i - 2] : 0) + nums[i], (i >= 1 ? dp[i - 1] : 0))
        }
        return dp[n - 1]
    }
}

// MARK: - 3. Optimized Dynamic Programming

class Xoo198_3 {
//    func rob(_ nums: [Int]) -> Int {
//        guard !nums.isEmpty else { return 0 }
//        var dp1 = 0 // dp(n - 2)
//        var dp2 = 0 // dp(n - 1)
//        for i in 0..<nums.count {
//            let dp = max(dp2 + nums[i], dp1)
//            dp2 = dp1
//            dp1 = dp
//        }
//        return dp1
//    }
    
    func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var rob = 0
        var norob = 0
        for i in 0..<nums.count {
            let rob_tmp = rob
            let norob_tmp = norob
            rob = norob_tmp + nums[i]
            norob = max(rob_tmp, norob_tmp)
        }
        return max(rob, norob)
    }
}
