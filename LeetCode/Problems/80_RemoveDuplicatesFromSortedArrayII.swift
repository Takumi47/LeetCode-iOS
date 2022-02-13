//
//  80_RemoveDuplicatesFromSortedArrayII.swift
//  LeetCode
//
//  Created by xander on 2022/2/6.
//

import Foundation

class Xoo80 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        0
    }
}

// MARK: - 1. Popping Unwanted Duplicates

class Xoo80_1 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        0
    }
}

// MARK: - 2. Overwriting unwanted duplicates

class Xoo80_2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var nextEmpty = 1
        var countOfDup = 1
        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                countOfDup += 1
            } else {
                countOfDup = 1
            }
            if countOfDup <= 2 {
                nums[nextEmpty] = nums[i]
                nextEmpty += 1
            }
        }
        return nextEmpty
    }
}
