//
//  45_JumpGameII.swift
//  LeetCode
//
//  Created by xander on 2022/2/9.
//

import Foundation

class Xoo45 {
    func jump(_ nums: [Int]) -> Int {
        let n = nums.count
        guard n > 1 else { return 0 }
        var jumps = 0
        var start = 0
        var end = 0
        
        while start <= end {
            var newEnd = end
            for i in start...end {
                newEnd = max(newEnd, i + nums[i])
                if newEnd >= n - 1 {
                    return jumps + 1
                }
            }
            start = end + 1
            end = newEnd
            jumps += 1
        }
        
        return jumps
    }
}

// MARK: - 1. Greedy

class Xoo45_1 {
    func jump(_ nums: [Int]) -> Int {
        let n = nums.count
        var jumps = 0
        var currEnd = 0
        var furthest = 0
        for i in 0..<n - 1 {
            furthest = max(furthest, i + nums[i])
            if i == currEnd {
                currEnd = furthest
                jumps += 1
            }
        }
        return jumps
    }
}
