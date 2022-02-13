//
//  363_MaxSumOfRectangleNoLargerThanK.swift
//  LeetCode
//
//  Created by xander on 2021/7/3.
//

import Foundation

// https://www.youtube.com/watch?v=RZVPX3elY9I
class Xoo363 {
    func maxSumSubmatrix(_ matrix: [[Int]], _ k: Int) -> Int {
        let m = matrix.count
        let n = matrix[0].count
        var res = Int.min
        
        for i in 0..<m {
            var rowSums: [Int] = Array(repeating: 0, count: n)
            for r in i..<m {
                for c in 0..<n {
                    rowSums[c] += matrix[r][c]
                }
                res = max(res, maxSumSubarrayNoLargerThanK(rowSums, k))
                if res == k { return k }
            }
        }
        return res
    }
    
    private func kadance(_ nums: [Int]) -> Int {
        var sum = nums[0]
        var curr = nums[0]
        for i in 1..<nums.count {
            curr = max(curr + nums[i], nums[i])
            if curr > sum { sum = curr }
        }
        return sum
    }
    
    private func maxSumSubarrayNoLargerThanK(_ nums: [Int], _ k: Int) -> Int {
        let kadaneSum = kadance(nums)
        if kadaneSum <= k { return kadaneSum }
        
        var res = Int.min
        for i in 0..<nums.count {
            var sum = 0
            for j in i..<nums.count {
                sum += nums[j]
                
                if sum > res && sum <= k {
                    res = sum
                    if res == k { return k }
                }
            }
        }
        return res
    }
}

// MARK: - 1. Prefix Sum on 1D Array using Sorted Container

class Xoo363_1 {
    func maxSumSubmatrix(_ matrix: [[Int]], _ k: Int) -> Int {
        0
    }
}

// MARK: - 2.

class Xoo363_2 {
    func maxSumSubmatrix(_ matrix: [[Int]], _ k: Int) -> Int {
        0
    }
}

// MARK: - 3.

class Xoo363_3 {
    func maxSumSubmatrix(_ matrix: [[Int]], _ k: Int) -> Int {
        0
    }
}
