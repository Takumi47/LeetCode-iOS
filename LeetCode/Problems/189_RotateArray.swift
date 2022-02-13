//
//  189_RotateArray.swift
//  LeetCode
//
//  Created by xander on 2022/1/30.
//

import Foundation

class Xoo189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
    }
}

// MARK: - 1. Brute Force

class Xoo189_1 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        let k = k % n
        for _ in 0..<k {
            var prev = nums[n - 1]
            for i in 0..<n {
                let temp = nums[i]
                nums[i] = prev
                prev = temp
            }
        }
    }
}

// MARK: - 2. Using Extra Array

class Xoo189_2 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        nums = Array(nums[(n - k % n)...] + nums[0..<(n - k % n)])
    }
}

// MARK: - 3. Using Cyclic Replacements

class Xoo189_3 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        let k = k % n
        var count = 0
        for i in 0..<n {
            guard count < n else { break }
            var currIdx = i
            var prevNum = nums[i]
            repeat {
                let nextIdx = (currIdx + k) % n
                let temp = nums[nextIdx]
                nums[nextIdx] = prevNum
                currIdx = nextIdx
                prevNum = temp
                count += 1
            } while currIdx != i
        }
    }
}

// MARK: - 4. Using Reverse

class Xoo189_4 {
    func rotate(_ nums: inout [Int], _ k: Int) {
    }
}
