//
//  350_IntersectionOfTwoArraysII.swift
//  LeetCode
//
//  Created by xander on 2021/9/18.
//

import Foundation

class Xoo350 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        []
    }
}

// MARK: - 1. Hash Map

class Xoo350_1 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1 = nums1
        var nums2 = nums2
        if nums1.count > nums2.count { swap(&nums1, &nums2) }
        
        var map: [Int: Int] = [:]
        for num in nums1 {
            map[num, default: 0] += 1
        }
        
        var ans: [Int] = []
        for num in nums2 {
            guard let c = map[num] else { continue }
            if c > 0 { ans.append(num) }
            map[num] = c - 1
        }
        return ans
    }
}

// MARK: - 2. Sort

class Xoo350_2 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let nums1 = nums1.sorted()
        let nums2 = nums2.sorted()
        var ans: [Int] = []
        var i = 0
        var j = 0
        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                i += 1
            } else if nums1[i] > nums2[j] {
                j += 1
            } else {
                ans.append(nums1[i])
                i += 1
                j += 1
            }
        }
        return ans
    }
}

// MARK: - 3. Built-in Intersection

class Xoo350_3 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        []
    }
}
