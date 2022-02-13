//
//  162_FindPeakElement.swift
//  LeetCode
//
//  Created by xander on 2021/7/13.
//

import Foundation

class Xoo162 {
    func findPeakElement(_ nums: [Int]) -> Int {
        findPeak(nums, 0, nums.count)
    }
    
    private func findPeak(_ nums: [Int], _ lo: Int, _ hi: Int) -> Int {
        guard lo < hi else { return lo }

        let mid = (lo + hi) / 2
        if lo == mid { return lo }

        let left = findPeak(nums, lo, mid)
        let right = findPeak(nums, mid, hi)

        var pivot = mid
        if nums[left] > nums[pivot] { pivot = left }
        if nums[right] > nums[pivot] { pivot = right }
        return pivot
    }
}

// MARK: - 1. Linear Scan

class Xoo162_1 {
    func findPeakElement(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return -1 }
        for i in 0..<nums.count - 1 {
            if nums[i] > nums[i + 1] {
                return i
            }
        }
        return nums.count - 1
    }
}

// MARK: - 2. Recursive Binary Search

class Xoo162_2 {
    func findPeakElement(_ nums: [Int]) -> Int {
        search(nums, 0, nums.count - 1)
    }
    
    private func search(_ nums: [Int], _ l: Int, _ r: Int) -> Int {
        if l == r { return l }
        let mid = (l + r) / 2
        if nums[mid] > nums[mid + 1] {
            return search(nums, l, mid)
        }
        return search(nums, mid + 1, r)
    }
}

// MARK: - 3. Iterative Binary Search

class Xoo162_3 {
    func findPeakElement(_ nums: [Int]) -> Int {
        var l = 0
        var r = nums.count - 1
        while l < r {
            let mid = (l + r) / 2
            if nums[mid] > nums[mid + 1] {
                r = mid
            } else {
                l = mid + 1
            }
        }
        return l
    }
}
