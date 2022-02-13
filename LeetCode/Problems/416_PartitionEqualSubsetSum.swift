//
//  416_PartitionEqualSubsetSum.swift
//  LeetCode
//
//  Created by xander on 2021/12/12.
//

import Foundation

class Xoo416 {
    func canPartition(_ nums: [Int]) -> Bool {
        let total = nums.reduce(0, +)
        guard total % 2 == 0 else { return false }
        
        let target = total / 2
        var subsets: Set<Int> = [0]
        
        for num in nums {
            for val in subsets {
                let value = val + num
                if value == target { return true }
                if value < target {
                    subsets.insert(value)
                }
            }
        }
        
        return false
    }
}

// MARK: - 1. Brute Force

class Xoo416_1 {
    func canPartition(_ nums: [Int]) -> Bool {
        let totalSum = nums.reduce(0, +)
        guard totalSum.isMultiple(of: 2) else { return false }
        let subsetSum = totalSum / 2
        return dfs(nums, nums.count, subsetSum)
    }
    
    private func dfs(_ nums: [Int], _ n: Int, _ subsetSum: Int) -> Bool {
        if subsetSum == 0 { return true }
        if n == 0 || subsetSum < 0 { return false }
        return dfs(nums, n - 1, subsetSum) || dfs(nums, n - 1, subsetSum - nums[n - 1])
    }
}

// MARK: - 2. Top Down Dynamic Programming - Memoization

class Xoo416_2 {
    func canPartition(_ nums: [Int]) -> Bool {
        let totalSum = nums.reduce(0, +)
        guard totalSum.isMultiple(of: 2) else { return false }
        let subsetSum = totalSum / 2
        let n = nums.count
        var memo: [[Bool?]] = Array(repeating: Array(repeating: nil, count: subsetSum + 1), count: n + 1)
        return dfs(nums, n, subsetSum, &memo)
    }
    
    private func dfs(_ nums: [Int], _ n: Int, _ subsetSum: Int, _ memo: inout [[Bool?]]) -> Bool {
        if subsetSum == 0 { return true }
        if n == 0 || subsetSum < 0 { return false }
        if let res = memo[n][subsetSum] { return res }
        let result = dfs(nums, n - 1, subsetSum, &memo) || dfs(nums, n - 1, subsetSum - nums[n - 1], &memo)
        memo[n][subsetSum] = result
        return result
    }
}

// MARK: - 3. Bottom Up Dynamic Programming

class Xoo416_3 {
    func canPartition(_ nums: [Int]) -> Bool {
        false
    }
}

// MARK: - 4. Optimised Dynamic Programming - Using 1D Array

class Xoo416_4 {
    func canPartition(_ nums: [Int]) -> Bool {
        false
    }
}
