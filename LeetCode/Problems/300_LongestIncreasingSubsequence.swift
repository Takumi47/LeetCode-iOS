//
//  300_LongestIncreasingSubsequence.swift
//  LeetCode
//
//  Created by xander on 2021/7/9.
//

import Foundation

class Xoo300 {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        let sortedSet = Set(nums).sorted()
        let m = nums.count
        let n = sortedSet.count
        var memo: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        return lcs(nums, sortedSet, m, n, &memo)
    }
    
    private func lcs(_ nums1: [Int], _ nums2: [Int], _ m: Int, _ n: Int, _ memo: inout [[Int]]) -> Int {
        guard memo[m][n] == 0 else { return memo[m][n] }
        
        if m == 0 || n == 0 {
            return 0
        } else if nums1[m - 1] == nums2[n - 1] {
            memo[m][n] = 1 + lcs(nums1, nums2, m - 1, n - 1, &memo)
        } else {
            memo[m][n] = max(lcs(nums1, nums2, m - 1, n, &memo), lcs(nums1, nums2, m, n - 1, &memo))
        }
        
        return memo[m][n]
    }
}

// MARK: - Patience sorting

class Xoo300_A {
    
    /// dp[i]: the smallest ending number of a subsequence that has length i+!.
    /// 長度為 i+1 時 最佳解的結尾為 dp[i]
    func lengthOfLIS(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Dynamic Programming

class Xoo300_1 {
    
    /// dp[i]: represents the length of the longest increasing subsequence that ends wtih the element at index i.
    func lengthOfLIS(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp: [Int] = Array(repeating: 1, count: n)
        
        for i in 1..<n {
            for j in 0..<i {
                if nums[j] < nums[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }
        
        return dp.max() ?? 0
    }
}

// MARK: - 2. Intelligently Build a Subsequence

class Xoo300_2 {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var sub: [Int] = []
        
        for num in nums {
            if sub.isEmpty || num > sub.last! {
                sub.append(num)
            } else {
                // Find the 1st element in sub that is >= num
                for i in 0..<sub.count {
                    if sub[i] >= num {
                        sub[i] = num
                        break
                    }
                }
            }
        }
        
        return sub.count
    }
}

// MARK: - 3. Improve With Binary Search

class Xoo300_3 {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var sub: [Int] = []
        for num in nums {
            if sub.isEmpty || num > sub.last! {
                sub.append(num)
            } else {
                let i = binarySearch(sub, num)
                sub[i] = num
            }
        }
        return sub.count
    }
    
    private func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { fatalError() }
        var lo = 0
        var hi = nums.count - 1
        while lo < hi {
            let mid = (lo + hi) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                hi = mid
            } else {
                lo = mid + 1
            }
        }
        return lo
    }
}
