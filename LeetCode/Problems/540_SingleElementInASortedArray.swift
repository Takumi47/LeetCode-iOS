//
//  540_SingleElementInASortedArray.swift
//  LeetCode
//
//  Created by xander on 2021/11/20.
//

import Foundation

class Xoo540 {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo540_1 {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        let n = nums.count
        guard n > 1 else { return nums[0] }
        
        for i in 1..<n where !i.isMultiple(of: 2) {
            if nums[i] != nums[i - 1] {
                return nums[i - 1]
            }
        }
        
        return nums[n - 1]
    }
}

// MARK: - 2. Binary Search

class Xoo540_2 {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Binary Search on Evens Indexes Only

class Xoo540_3 {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        0
    }
}
