//
//  128_LongestConsecutiveSequence.swift
//  LeetCode
//
//  Created by xander on 2021/6/6.
//

import Foundation

// MARK: - 1. Brute Force

class Xoo128_1 {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numsSet = Set(nums)
        var maxLength = 0
        for num in nums {
            var length = 1
            var low = num
            var high = num
            var done = false
            while !done {
                done = true
                
                if numsSet.contains(low - 1) {
                    length += 1
                    low -= 1
                    numsSet.remove(low)
                    done = false
                }
                
                if numsSet.contains(high + 1) {
                    length += 1
                    high += 1
                    numsSet.remove(high)
                    done = false
                }
            }
            maxLength = max(maxLength, length)
        }
        return maxLength
    }
}

// MARK: - 2. Sorting

class Xoo128_2 {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        let nums = nums.sorted()
        var maxLength = 1
        var currlength = 1
        for i in 1..<nums.count {
            guard nums[i] != nums[i - 1] else { continue }
            
            if nums[i] == nums[i - 1] + 1 {
                currlength += 1
            } else {
                maxLength = max(maxLength, currlength)
                currlength = 1
            }
        }
        return max(maxLength, currlength)
    }
}

// MARK: - 3. HashSet and Intelligent Sequence Building

class Xoo128_3 {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let nums = Set(nums)
        var longest = 0
        for num in nums {
            guard !nums.contains(num - 1) else { continue }
            var length = 1
            var current = num
            while nums.contains(current + 1) {
                length += 1
                current += 1
            }
            longest = max(longest, length)
        }
        return longest
    }
}
