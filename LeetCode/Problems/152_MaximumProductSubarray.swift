//
//  152_MaximumProductSubarray.swift
//  LeetCode
//
//  Created by xander on 2021/12/4.
//

import Foundation

class Xoo152 {
    func maxProduct(_ nums: [Int]) -> Int {
        var maxProduct = nums[0]
        var currMax = nums[0]
        var currMin = nums[0]

        for (i, num) in nums.enumerated() where i != 0 {
            let currMax_tmp = currMax
            let currMin_tmp = currMin
            currMax = max(num * currMax_tmp, num * currMin_tmp, num)
            currMin = min(num * currMax_tmp, num * currMin_tmp, num)
            maxProduct = max(maxProduct, currMax)
        }
        
        return maxProduct
    }
}

// MARK: - 1. Brute Force

class Xoo152_1 {
    func maxProduct(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Dynamic Programming

class Xoo152_2 {
    func maxProduct(_ nums: [Int]) -> Int {
        0
    }
}
