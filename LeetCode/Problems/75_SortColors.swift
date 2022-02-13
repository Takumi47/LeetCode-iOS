//
//  75_SortColors.swift
//  LeetCode
//
//  Created by xander on 2021/10/27.
//

import Foundation

class Xoo75 {
    func sortColors(_ nums: inout [Int]) {
        let n = nums.count
        guard n > 1 else { return }
        var curr = 0
        var i = 0
        var j = n - 1
        while curr <= j {
            if nums[curr] == 0 {
                nums.swapAt(curr, i)
                i += 1
                curr += 1
            } else if nums[curr] == 1 {
                curr += 1
            } else if nums[curr] == 2 {
                nums.swapAt(curr, j)
                j -= 1
            }
        }
    }
}

// MARK: - 1. One Pass

class Xoo75_1 {
    func sortColors(_ nums: inout [Int]) {
    }
}
