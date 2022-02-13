//
//  1_TwoSum.swift
//  LeetCode
//
//  Created by xander on 2021/7/16.
//

import Foundation

class Xoo1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        []
    }
}

// MARK: - 1. Brute Force

class Xoo1_1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count - 1 {
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

// MARK: - 2. Two-pass Hash Table

class Xoo1_2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        []
    }
}

// MARK: - 3. One-pass Hash Table

class Xoo1_3 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            let left = target - num
            if let j = map[left] {
                return [i, j]
            } else {
                map[num] = i
            }
        }
        return []
    }
}
