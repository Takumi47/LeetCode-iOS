//
//  18_4Sum.swift
//  LeetCode
//
//  Created by xander on 2021/7/16.
//

import Foundation

class Xoo18 {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let n = nums.count
        let nums = nums.sorted()
        var ans: [[Int]] = []
        for i in 0..<n {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            for j in (i + 1)..<n {
                if j > i + 1 && nums[j] == nums[j - 1] { continue }
                var k = j + 1
                var l = n - 1
                while k < l {
                    let t = target - nums[i] - nums[j]
                    if nums[k] + nums[l] > t {
                        l -= 1
                    } else if nums[k] + nums[l] < t {
                        k += 1
                    } else {
                        ans.append([nums[i], nums[j], nums[k], nums[l]])
                        while k < l && nums[k] == nums[k + 1] { k += 1 }
                        while k < l && nums[l] == nums[l - 1] { l -= 1 }
                        k += 1
                        l -= 1
                    }
                }
            }
        }
        return ans
    }
}

// MARK: - 1.

class Xoo18_1 {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        []
    }
}

// MARK: - 2.

class Xoo18_2 {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        []
    }
}
