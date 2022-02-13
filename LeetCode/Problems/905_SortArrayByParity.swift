//
//  905_SortArrayByParity.swift
//  LeetCode
//
//  Created by xander on 2021/9/28.
//

import Foundation

class Xoo905 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        var i = 0
        var j = nums.count - 1
        while i < j {
            if nums[i] % 2 > nums[j] % 2 {
                nums.swapAt(i, j)
            }
            while nums[i].isMultiple(of: 2) && i < j { i += 1 }
            while !nums[j].isMultiple(of: 2) && i < j { j -= 1 }
        }
        return nums
    }
}

// MARK: - 1. Sort

class Xoo905_1 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 2. Two Pass

class Xoo905_2 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 3. In-Place

class Xoo905_3 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        []
    }
}
