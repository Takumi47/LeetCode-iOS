//
//  349_IntersectionOfTwoArrays.swift
//  LeetCode
//
//  Created by xander on 2021/9/18.
//

import Foundation

class Xoo349 {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map: [Int: Int] = [:]
        var ans: [Int] = []
        for num in nums1 {
            map[num] = 0
        }
        for num in nums2 {
            guard let c = map[num] else { continue }
            if c == 0 { ans.append(num) }
            map[num] = c + 1
        }
        return ans
    }
}

// MARK: - 1. Two Sets

class Xoo349_1 {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1 = Set(nums1)
        var set2 = Set(nums2)
        if set1.count > set2.count { swap(&set1, &set2) }
        
        var ans: [Int] = []
        for num in set1 {
            if set2.contains(num) {
                ans.append(num)
            }
        }
        return ans
    }
}

// MARK: - 2. Built-in Set Intersection

class Xoo349_2 {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        return Array(set1.intersection(set2))
    }
}
