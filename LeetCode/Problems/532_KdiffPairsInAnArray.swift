//
//  532_KdiffPairsInAnArray.swift
//  LeetCode
//
//  Created by xander on 2022/2/9.
//

import Foundation

class Xoo532 {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo532_1 {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        let n = nums.count
        let nums = nums.sorted()
        var res = 0
        for i in 0..<n {
            if i > 0, nums[i] == nums[i - 1] { continue }
            
            for j in (i + 1)..<n {
                if j > (i + 1), nums[j] == nums[j - 1] { continue }
                if abs(nums[j] - nums[i]) == k {
                    res += 1
                }
            }
        }
        return res
    }
}

// MARK: - 2. Two Pointers

class Xoo532_2 {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        let n = nums.count
        let nums = nums.sorted()
        var res = 0
        var l = 0
        var r = 1
        while l < n && r < n {
            let diff = abs(nums[l] - nums[r])
            
            if diff < k || l == r {
                r += 1
            } else if diff > k {
                l += 1
            } else {
                l += 1
                res += 1
                while l < n && nums[l] == nums[l - 1] { l += 1 }
            }
        }
        return res
    }
}

// MARK: - 3. Hashmap

class Xoo532_3 {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        var map: [Int: Int] = [:]
        nums.forEach { map[$0, default: 0] += 1 }
        
        var res = 0
        for (key, val) in map {
            if k == 0 && val > 1 {
                res += 1
            } else if k > 0 && map[key + k] != nil {
                res += 1
            }
        }
        return res
    }
}
