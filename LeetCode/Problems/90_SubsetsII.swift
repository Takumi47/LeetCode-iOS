//
//  90_SubsetsII.swift
//  LeetCode
//
//  Created by xander on 2021/8/3.
//

import Foundation

class Xoo90 {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        let nums = nums.sorted()
        var ans: [[Int]] = []
        var curr: [Int] = []
        for i in 0...n {
            dfs(nums, i, 0, &curr, &ans)
        }
        return ans
    }
    
    private func dfs(_ nums: [Int], _ n: Int, _ s: Int, _ curr: inout [Int], _ ans: inout [[Int]]) {
        if curr.count == n {
            ans.append(curr)
        }
        
        for i in s..<nums.count {
            if i > s && nums[i] == nums[i - 1] { continue }
            curr.append(nums[i])
            dfs(nums, n, i + 1, &curr, &ans)
            curr.removeLast()
        }
    }
}

// MARK: - 1. Bitmasking

class Xoo90_1 {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 2. Cascading (Iterative)

class Xoo90_2 {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 3. Backtracking

class Xoo90_3 {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        []
    }
}
