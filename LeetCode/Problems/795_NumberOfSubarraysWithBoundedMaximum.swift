//
//  795_NumberOfSubarraysWithBoundedMaximum.swift
//  LeetCode
//
//  Created by xander on 2021/6/17.
//

import Foundation

// MARK: - Counting

class Xoo795 {
    func numSubarrayBoundedMax(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
        return count(nums, right) - count(nums, left - 1)
    }
    
    private func count(_ nums: [Int], _ bound: Int) -> Int {
        var count = 0
        var current = 0
        for num in nums {
            current = (num <= bound) ? current + 1 : 0
            count += current
        }
        return count
    }
}
