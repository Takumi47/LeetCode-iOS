//
//  718_MaximumLengthOfRepeatedSubarray.swift
//  LeetCode
//
//  Created by xander on 2021/7/8.
//

import Foundation

class Xoo718 {
    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force with Initial Character Map

class Xoo718_1 {
    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        0
    }
}

// MARK: - 2.

class Xoo718_2 {
    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming

class Xoo718_3 {
    
    /// dp[i][j]: the longest common prefix of A[i...] and B[j...]
    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var nums1 = nums1
        var nums2 = nums2
        if nums1.count < nums2.count { swap(&nums1, &nums2) }
        
        let m = nums1.count
        let n = nums2.count
        var dp: [Int] = Array(repeating: 0, count: n + 1)
        //var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        
        var ans = 0
        
//        for i in (0..<m).reversed() {
//            for j in (0..<n).reversed() {
//                if nums1[i] == nums2[j] {
//                    dp[i][j] = 1 + dp[i + 1][j + 1]
//                    if dp[i][j] > max { max = dp[i][j] }
//                }
//            }
//        }
        
        for i in 1...m {
            for j in (1...n).reversed() {
                if nums1[i - 1] == nums2[j - 1] {
                    dp[j] = dp[j - 1] + 1
                } else {
                    dp[j] = 0
                }
                ans = max(ans, dp[j])
            }
        }
        
        return ans
    }
}

// MARK: - 4.

class Xoo718_4 {
    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        0
    }
}
