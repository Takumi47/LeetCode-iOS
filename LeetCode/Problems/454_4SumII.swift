//
//  454_4SumII.swift
//  LeetCode
//
//  Created by xander on 2022/2/3.
//

import Foundation

class Xoo454 {
    func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Hashmap

class Xoo454_1 {
    func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
        var count = 0
        var map: [Int: Int] = [:]
        for a in nums1 {
            for b in nums2 {
                map[a + b, default: 0] += 1
            }
        }
        for c in nums3 {
            for d in nums4 {
                if let n = map[-(c + d)] {
                    count += n
                }
            }
        }
        return count
    }
}

// MARK: - 2. kSum II

class Xoo454_2 {
    func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
        0
    }
}
