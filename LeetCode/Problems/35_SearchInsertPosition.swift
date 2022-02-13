//
//  35_SearchInsertPosition.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        0
    }
}

// MARK: - 1. Binary Search

class Xoo35_1 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count - 1
        while lo <= hi {
            let mid = (lo + hi) / 2
            if nums[mid] == target { return mid }
            
            if target < nums[mid] {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return lo
    }
}
