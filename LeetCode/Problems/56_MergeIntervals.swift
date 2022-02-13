//
//  56_MergeIntervals.swift
//  LeetCode
//
//  Created by xander on 2021/12/25.
//

import Foundation

class Xoo56 {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else { return [] }
        let intervals = intervals.sorted { $0[0] < $1[0] }
        
        var ans: [[Int]] = []
        for interval in intervals {
            let n = ans.count
            if ans.isEmpty || ans[n - 1][1] < interval[0] {
                ans.append(interval)
            } else {
                let end = max(ans[n - 1][1], interval[1])
                ans[n - 1][1] = end
            }
        }
        return ans
    }
}

// MARK: - 1. Connected Components

class Xoo56_1 {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        []
    }
}

// MARK: - 2. Sorting

class Xoo56_2 {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        []
    }
}
