//
//  53_MaximumSubarray.swift
//  LeetCode
//
//  Created by xander on 2021/7/3.
//

import Foundation

class Xoo53 {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        guard nums.count > 1 else { return nums[0] }
        
        // dp[i]: maxSubArray from 0 to i, and must have ith
        var dp: [Int] = Array(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        
        for i in 1..<nums.count {
            dp[i] = max(dp[i - 1] + nums[i], nums[i])
        }
        
        return dp.max() ?? 0
    }
}

class Xoo53_A {
    
    /// maxSum[i] = max(A[i] + maxSum[i - 1])
    func maxSubArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var maxSum = nums[0]
        var currMaxSum = nums[0] // dp[i]: maxSubArray from 0 to i, and must have ith
        for i in 1..<nums.count {
            currMaxSum = max(currMaxSum + nums[i], nums[i])
            if currMaxSum > maxSum { maxSum = currMaxSum }
        }
        return maxSum
    }
}

// MARK: - 1. Optimized Brute Force

class Xoo53_1 {
    func maxSubArray(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming, Kadane's Algorithm

class Xoo53_2 {
    func maxSubArray(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Divide and Conquer (Advanced)

class Xoo53_3 {
    func maxSubArray(_ nums: [Int]) -> Int {
        0
    }
}
