//
//  88_MergeSortedArray.swift
//  LeetCode
//
//  Created by xander on 2022/2/13.
//

import Foundation

class Xoo88 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    }
}

// MARK: - 1. Merge and sort

class Xoo88_1 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in m..<(m + n) { nums1[i] = nums2[i - m] }
        nums1.sort()
    }
}

// MARK: - 2. Three Pointers (Start From the Beginning)

class Xoo88_2 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let n1 = Array(nums1[0..<m])
        
        var p1 = 0
        var p2 = 0
        for p in 0..<(m + n) {
            if p2 >= n || (p1 < m && n1[p1] < nums2[p2]) {
                nums1[p] = n1[p1]
                p1 += 1
            } else {
                nums1[p] = nums2[p2]
                p2 += 1
            }
        }
    }
}

// MARK: - 3. Three Pointers (Start From the End)

class Xoo88_3 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    }
}
