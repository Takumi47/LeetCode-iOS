//
//  378_KthSmallestElementInASortedMatrix.swift
//  LeetCode
//
//  Created by xander on 2021/7/7.
//

import Foundation

class Xoo378 {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        let nums = matrix.flatMap { $0 }
        let queue = PriorityQueue(nums, <)
        var ans = -1
        (1...k).forEach { _ in
            if let num = queue.dequeue() {
                ans = num
            }
        }
        return ans
    }
}

// MARK: - 1. Min-Heap approach

class Xoo378_1 {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        0
    }
}

// MARK: - 2. Binary Search

class Xoo378_2 {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        0
    }
}
