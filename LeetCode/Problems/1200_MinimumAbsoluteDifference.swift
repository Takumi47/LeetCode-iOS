//
//  1200_MinimumAbsoluteDifference.swift
//  LeetCode
//
//  Created by xander on 2021/12/20.
//

import Foundation

class Xoo1200 {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 1. Sort + 2 Traversals

class Xoo1200_1 {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        let n = arr.count
        let arr = arr.sorted()
        var ans: [[Int]] = []
        var minDiff = Int.max
        
        for i in 0..<n - 1 {
            let diff = arr[i + 1] - arr[i]
            minDiff = min(minDiff, diff)
        }
        
        for i in 0..<n - 1 {
            if arr[i + 1] - arr[i] == minDiff {
                ans.append([arr[i], arr[i + 1]])
            }
        }
        
        return ans
    }
}

// MARK: - 2. Sort + 1 Traversal

class Xoo1200_2 {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        []
    }
}

// MARK: - 3. Counting Sort

class Xoo1200_3 {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        []
    }
}
