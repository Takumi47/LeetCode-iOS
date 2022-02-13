//
//  1182_ShortestDistanceToTargetColor.swift
//  LeetCode
//
//  Created by xander on 2021/6/15.
//

import Foundation

// MARK: - 0. (Time Limit Exceeded)

class Xoo1182 {
    func shortestDistanceColor(_ colors: [Int], _ queries: [[Int]]) -> [Int] {
        var memo: [Int: [Int]] = [:]
        for (i, color) in colors.enumerated() {
            memo[color] = (memo[color] ?? []) + [i]
        }
        
        var output: [Int] = []
        for query in queries {
            if let indexes = memo[query[1]] {
                let minOffset = bs(indexes, query[0])
                output.append(minOffset)
            } else {
                output.append(-1)
            }
        }
        return output
    }
    
    private func bs(_ array: [Int], _ target: Int) -> Int {
        if let first = array.first, target <= first { return first - target }
        if let last = array.last, last <= target { return target - last }
        
        var low = 0
        var high = array.count
        
        while low < high {
            let mid = (low + high) / 2
            
            if array[mid] >= target {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return min(target - array[low - 1], array[low] - target)
    }
}

// MARK: - 1. Binary Search

class Xoo1182_1 {
    func shortestDistanceColor(_ colors: [Int], _ queries: [[Int]]) -> [Int] {
        []
    }
}

// MARK: - 2.

class Xoo1182_2 {
    func shortestDistanceColor(_ colors: [Int], _ queries: [[Int]]) -> [Int] {
        []
    }
}
