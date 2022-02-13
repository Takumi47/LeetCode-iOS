//
//  413_ArithmeticSlices.swift
//  LeetCode
//
//  Created by xander on 2021/9/12.
//

import Foundation

class Xoo413 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo413_1 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        let n = nums.count
        var count = 0
        for s in 0..<(n - 2) {
            let d = nums[s + 1] - nums[s]
            for e in (s + 2)..<n {
                var i = s + 1
                while i <= e {
                    if nums[i] - nums[i - 1] != d { break }
                    i += 1
                }
                
                if i > e {
                    count += 1
                }
            }
        }
        return count
    }
}

// MARK: - 2. Better Brute Force

class Xoo413_2 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        let n = nums.count
        var count = 0
        for s in 0..<(n - 2) {
            let d = nums[s + 1] - nums[s]
            for e in (s + 2)..<n {
                if nums[e] - nums[e - 1] == d {
                    count += 1
                } else {
                    break
                }
            }
        }
        return count
    }
}

// MARK: - 3. Using Recursion

class Xoo413_3 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        var sum = 0
        _ = slices(nums, nums.count - 1, &sum)
        return sum
    }
    
    /// - Returns: number of arithmetic slices in the range (0, i)
    private func slices(_ nums: [Int], _ i: Int, _ sum: inout Int) -> Int {
        guard i >= 2 else { return 0 }
        var count = 0
        if nums[i] - nums[i - 1] == nums[i - 1] - nums[i - 2] {
            count = 1 + slices(nums, i - 1, &sum)
            sum += count
        } else {
            _ = slices(nums, i - 1, &sum)
        }
        return count
    }
}

// MARK: - 4. Dynamic Programming

class Xoo413_4 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 5. Constant Space Dynamic Programming

class Xoo413_5 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 6. Using Formula

class Xoo413_6 {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        0
    }
}
