//
//  922_SortArrayByParityII.swift
//  LeetCode
//
//  Created by xander on 2021/9/28.
//

import Foundation

class Xoo922 {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var nums = nums
        var i = 0
        var j = 1
        while i < n && j < n {
            if nums[i].isMultiple(of: 2) {
                i += 2
            } else {
                while !nums[j].isMultiple(of: 2) {
                    j += 2
                }
                nums.swapAt(i, j)
            }
        }
        return nums
    }
}

class Xoo922_A {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var res: [Int] = Array(repeating: 0, count: nums.count)
        var i = 0
        var j = 1
        for num in nums {
            if num.isMultiple(of: 2) {
                res[i] = num
                i += 2
            } else {
                res[j] = num
                j += 2
            }
        }
        return res
    }
}

// MARK: - 1. Two Pass

class Xoo922_1 {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 2. Read / Write Heads

class Xoo922_2 {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        []
    }
}
