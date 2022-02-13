//
//  560_SubarraySumEqualsK.swift
//  LeetCode
//
//  Created by xander on 2022/2/11.
//

import Foundation

class Xoo560 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        let n = nums.count
        var prefixSums: [Int] = Array(repeating: 0, count: n + 1)
        for i in 1...n {
            prefixSums[i] = prefixSums[i - 1] + nums[i - 1]
        }
        
        var count = 0
        for start in 0..<n {
            for end in start..<n {
                if prefixSums[end + 1] - prefixSums[start] == k {
                    count += 1
                }
            }
        }
        return count
    }
}

// MARK: - 1. Brute Force

class Xoo560_1 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        let n = nums.count
        var count = 0
        for s in 0..<n {
            for e in s..<n {
                var sum = 0
                for i in s...e {
                    sum += nums[i]
                }
                if sum == k {
                    count += 1
                }
            }
        }
        return count
    }
}

// MARK: - 2. Using Cumulative Sum

class Xoo560_2 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        0
    }
}

// MARK: - 3. Without Space

class Xoo560_3 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        0
    }
}

// MARK: - 4. Using Hashmap

class Xoo560_4 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var prefixSumCounts: [Int: Int] = [0: 1] // prefixSum = 0, times = 1
        var sum = 0
        var count = 0
        for num in nums {
            sum += num
            count += prefixSumCounts[sum - k, default: 0]
            prefixSumCounts[sum, default: 0] += 1
        }
        return count
    }
}
