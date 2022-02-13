//
//  611_ValidTriangleNumber.swift
//  LeetCode
//
//  Created by xander on 2021/7/15.
//

import Foundation

class Xoo611 {
    
    /// a + b > c
    /// a <= b <= c
    func triangleNumber(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        let n = nums.count
        let nums = nums.sorted(by: >)
        var ans = 0
        for c in 0..<n - 2 {
            var a = n - 1
            var b = c + 1
            while a > b {
                if nums[a] + nums[b] > nums[c] {
                    ans += a - b
                    b += 1
                } else {
                    a -= 1
                }
            }
        }
        return ans
    }
}

// MARK: - 1. Brute Force

class Xoo611_1 {
    func triangleNumber(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        let n = nums.count
        var count = 0
        for i in 0..<n - 2 {
            for j in (i + 1)..<n - 1 {
                for k in (j + 1)..<n {
                    if isValid(nums[i], nums[j], nums[k]) {
                        count += 1
                    }
                }
            }
        }
        return count
    }
    
    private func isValid(_ a: Int, _ b: Int, _ c: Int) -> Bool {
        (a + b > c) && (a + c > b) && (b + c > a)
    }
}

// MARK: - 2. Using Binary Search

class Xoo611_2 {
    func triangleNumber(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        let nums = nums.sorted()
        var count = 0
        for i in 0..<nums.count - 2 {
            var k = i + 2
            for j in (i + 1)..<nums.count - 1 where nums[i] != 0 {
                k = binarySearch(nums, k, nums.count, nums[i] + nums[j])
                count += k - j - 1
            }
        }
        return count
    }
    
    private func binarySearch(_ nums: [Int], _ lo: Int, _ hi: Int, _ target: Int) -> Int {
        guard lo < hi else { return lo }
        let mid = (lo + hi) / 2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            return binarySearch(nums, lo, mid, target)
        } else {
            return binarySearch(nums, mid + 1, hi, target)
        }
    }
}

// MARK: - 3. Linear Scan

class Xoo611_3 {
    func triangleNumber(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var count = 0
        for i in 0..<nums.count - 2 {
            var k = i + 2
            for j in (i + 1)..<nums.count - 1 where nums[i] != 0 {
                while k < nums.count && nums[i] + nums[j] > nums[k] {
                    k += 1
                }
                count += k - j - 1
            }
        }
        return count
    }
}
