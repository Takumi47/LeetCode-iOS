//
//  55_JumpGame.swift
//  LeetCode
//
//  Created by xander on 2021/12/10.
//

import Foundation

class Xoo55 {
    func canJump(_ nums: [Int]) -> Bool {
        let n = nums.count
        var furthest = 0
        for i in 0..<n - 1 {
            if furthest < i { return false }
            furthest = max(furthest, i + nums[i])
        }
        return furthest >= n - 1
    }
}

// MARK: - 1. Backtracking

class Xoo55_1 {
    func canJump(_ nums: [Int]) -> Bool {
        return canJumpFrom(0, nums)
    }
    
    private func canJumpFrom(_ position: Int, _ nums: [Int]) -> Bool {
        let n = nums.count
        if position == n - 1 { return true }
        let furthestPos = min(position + nums[position], n - 1)
        var currPos = position + 1
        while currPos <= furthestPos {
            if canJumpFrom(currPos, nums) {
                return true
            }
            currPos += 1
        }
        return false
    }
}

// MARK: - 2. Dynamic Programming Top-down

class Xoo55_2 {
    func canJump(_ nums: [Int]) -> Bool {
        var memo: [Bool?] = Array(repeating: nil, count: nums.count)
        memo[nums.count - 1] = true
        return canJumpFrom(nums, 0, &memo)
    }
    
    private func canJumpFrom(_ nums: [Int], _ pos: Int, _ memo: inout [Bool?]) -> Bool {
        if let res = memo[pos] { return res }
        
        let furthest = min(nums.count - 1, pos + nums[pos])
        var p = pos + 1
        while p <= furthest {
            if canJumpFrom(nums, p, &memo) {
                memo[pos] = true
                return true
            }
            p += 1
        }
        
        memo[pos] = false
        return false
    }
}

// MARK: - 3. Dynamic Programming Bottom-up

class Xoo55_3 {
    func canJump(_ nums: [Int]) -> Bool {
        let n = nums.count
        var dp: [Bool] = Array(repeating: false, count: n)
        dp[n - 1] = true
        
        for pos in (0..<n - 1).reversed() {
            let furthest = min(n - 1, pos + nums[pos])
            var p = pos + 1
            while p <= furthest {
                if dp[p] {
                    dp[pos] = true
                    break
                }
                p += 1
            }
        }
        
        return dp[0]
    }
}

// MARK: - 4. Greedy

class Xoo55_4 {
    func canJump(_ nums: [Int]) -> Bool {
        false
    }
}
