//
//  565_ArrayNesting.swift
//  LeetCode
//
//  Created by xander on 2021/9/1.
//

import Foundation

class Xoo565 {
    func arrayNesting(_ nums: [Int]) -> Int {
        var ans = 0
        var seen: Set<Int> = []
        for num in nums {
            var count = 0
            var curr = num
            while !seen.contains(curr) {
                if count != 0 && curr == num { break }
                count += 1
                seen.insert(curr)
                curr = nums[curr]
            }
            ans = max(ans, count)
        }
        return ans
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo565_1 {
    func arrayNesting(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Using Visited Array

class Xoo565_2 {
    func arrayNesting(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Without Using Extra Space

class Xoo565_3 {
    func arrayNesting(_ nums: [Int]) -> Int {
        0
    }
}
