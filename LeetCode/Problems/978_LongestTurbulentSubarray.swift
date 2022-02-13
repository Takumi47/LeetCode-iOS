//
//  978_LongestTurbulentSubarray.swift
//  LeetCode
//
//  Created by xander on 2021/9/16.
//

import Foundation

class Xoo978 {
    func maxTurbulenceSize(_ arr: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Sliding Window

class Xoo978_1 {
    func maxTurbulenceSize(_ arr: [Int]) -> Int {
        let n = arr.count
        guard n > 1 else { return 1 }
        var ans = 1
        var start = 0
        for end in 1..<n {
            let flag = compare(arr[end - 1], arr[end])
            
            if flag == 0 {
                start = end
            } else if end == n - 1 || flag * compare(arr[end], arr[end + 1]) != -1 {
                ans = max(ans, end - start + 1)
                start = end
            }
        }
        return ans
    }
    
    private func compare(_ a: Int, _ b: Int) -> Int {
        if a == b {
            return 0
        } else if a < b {
            return -1
        } else {
            return 1
        }
    }
}
