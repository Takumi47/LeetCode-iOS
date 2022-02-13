//
//  15_3Sum.swift
//  LeetCode
//
//  Created by xander on 2021/7/16.
//

import Foundation

class Xoo15 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }
        let nums = nums.sorted()
        var ans: [[Int]] = []
        var seen: Set<Int> = []
        
        for i in 0..<nums.count - 2 {
            guard !seen.contains(nums[i]) else { continue }
            
            let sols = twoSum(nums, i + 1, -nums[i])
            if !sols.isEmpty {
                for sol in sols {
                    ans.append([nums[i]] + sol)
                }
                seen.insert(nums[i])
            }
        }
        return ans
    }
    
    private func twoSum(_ nums: [Int], _ start: Int, _ target: Int) -> [[Int]] {
        var ans: [[Int]] = []
        var map: [Int: Int] = [:]
        var seen: Set<Int> = []
        
        for i in start..<nums.count {
            guard !seen.contains(nums[i]) else { continue }
            let left = target - nums[i]
            if let j = map[left] {
                ans.append([nums[i], nums[j]].sorted())
                seen.insert(nums[i])
            } else {
                map[nums[i]] = i
            }
        }
        return ans
    }
}

// MARK: - Hashtable

class Xoo15_A {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        let nums = nums.sorted()
        var mappingCount: [Int: Int] = [:]
        nums.forEach { mappingCount[$0, default: 0] += 1 }
        
        var ans: [[Int]] = []
        for i in 0..<n {
            if i > 0 && nums[i] == nums[i - 1] { continue } //
            for j in (i + 1)..<n {
                if j != i + 1 && nums[j] == nums[j - 1] { continue } //
                
                let target = 0 - nums[i] - nums[j]
                if target < nums[j] { continue } // Keep nums[i] <= nums[j] <= nums[k] (target)
                if mappingCount[target] == 0 { continue }
                
                // Make sure count is enough ex.(0,0,0)
                var needed = 1
                if nums[i] == target { needed += 1 }
                if nums[j] == target { needed += 1 }
                
                if let count = mappingCount[target], count >= needed {
                    ans.append([nums[i], nums[j], target])
                }
            }
        }
        return ans
    }
}

// MARK: - Two Pointers

class Xoo15_B {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        let nums = nums.sorted()
        var ans: [[Int]] = []
        for i in 0..<n {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            
            /*
             How to move points?
             Let target = 0 - nums[i]
             1. nums[j] + nums[k] > target, too large, decrease k
             2. nums[j] + nums[k] < target, too small, increase j
             */
            var j = i + 1
            var k = n - 1
            while j < k {
                if nums[j] + nums[k] > -nums[i] {
                    k -= 1
                } else if nums[j] + nums[k] < -nums[i] {
                    j += 1
                } else {
                    ans.append([nums[i], nums[j], nums[k]])
                    while j < k && nums[j] == nums[j + 1] { j += 1 }
                    while j < k && nums[k] == nums[k - 1] { k -= 1 }
                    j += 1
                    k -= 1
                }
            }
        }
        return ans
    }
}

// MARK: - 1. Two Pointers

class Xoo15_1 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 2. Hashset

class Xoo15_2 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 3. "No-Sort"

class Xoo15_3 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        []
    }
}
