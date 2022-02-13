//
//  494_TargetSum.swift
//  LeetCode
//
//  Created by xander on 2022/1/16.
//

import Foundation

class Xoo494 {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo494_1 {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        var count = 0
        calculate(nums, 0, target, &count)
        return count
    }
    
    private func calculate(_ nums: [Int], _ i: Int, _ target: Int, _ count: inout Int) {
        guard i < nums.count else {
            if target == 0 { count += 1 }
            return
        }
        calculate(nums, i + 1, target - nums[i], &count)
        calculate(nums, i + 1, target + nums[i], &count)
    }
}

// MARK: - 2. Recursion with Memoization

class Xoo494_2 {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        let n = nums.count
        let total = nums.reduce(0, +)
        var memo: [[Int]] = Array(repeating: Array(repeating: -1, count: 2 * total + 1), count: n)
        
        func calculate(_ i: Int, _ sum: Int) -> Int {
            guard i < n else { return sum == target ? 1 : 0 }
            if memo[i][sum + total] != -1 { return memo[i][sum + total] }
            let add = calculate(i + 1, sum + nums[i])
            let sub = calculate(i + 1, sum - nums[i])
            memo[i][sum + total] = add + sub
            return memo[i][sum + total]
        }
        return calculate(0, 0)
    }
}

// MARK: - 3. 2D Dynamic Programming

class Xoo494_3 {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}

// MARK: - 4. 1D Dynamic Programming

class Xoo494_4 {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}
