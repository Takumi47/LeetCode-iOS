//
//  941_ValidMountainArray.swift
//  LeetCode
//
//  Created by xander on 2022/1/25.
//

import Foundation

class Xoo941 {
    func validMountainArray(_ arr: [Int]) -> Bool {
        let n = arr.count
        guard n >= 3 else { return false }
        var isIncreasing = false
        var isDecreasing = false
        for i in 0..<n - 1 {
            if arr[i] < arr[i + 1] && !isDecreasing {
                isIncreasing = true
            } else if arr[i] > arr[i + 1] && isIncreasing {
                isDecreasing = true
            } else {
                return false
            }
        }
        return isIncreasing && isDecreasing
    }
}

// MARK: - 1. One Pass

class Xoo941_1 {
    func validMountainArray(_ arr: [Int]) -> Bool {
        let n = arr.count
        var i = 0
        while i + 1 < n && arr[i] < arr[i + 1] { i += 1 }
        guard i != 0 && i != n - 1 else { return false }
        while i + 1 < n && arr[i] > arr[i + 1] { i += 1 }
        return i == n - 1
    }
}
