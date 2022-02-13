//
//  1004_MaxConsecutiveOnesIII.swift
//  LeetCode
//
//  Created by xander on 2021/6/29.
//

import Foundation

class Xoo1004 {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0
        var l = 0
        var zeros = 0
        for r in 0..<nums.count {
            if nums[r] == 0 { zeros += 1 }
            
            while zeros > k {
                if nums[l] == 0 { zeros -= 1 }
                l += 1
            }

            ans = max(ans, r - l + 1)
        }
        return ans
    }
}

// MARK: - 1.

class Xoo1004_1 {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        0
    }
}
