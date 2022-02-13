//
//  546_RemoveBoxes.swift
//  LeetCode
//
//  Created by xander on 2021/8/14.
//

import Foundation

class Xoo546 {
    func removeBoxes(_ boxes: [Int]) -> Int {
        let n = boxes.count
        var memo: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: n), count: n), count: n)
        return dfs(boxes, 0, n - 1, 0, &memo)
    }
    
    private func dfs(_ boxes: [Int], _ l: Int, _ r: Int, _ k: Int, _ memo: inout [[[Int]]]) -> Int {
        guard l <= r else { return 0 }
        
        //---------------
        var r = r
        var k = k
        while l < r && boxes[r - 1] == boxes[r] {
            r -= 1
            k += 1
        }
        //---------------
        
        if memo[l][r][k] > 0 { return memo[l][r][k] }
        
        // Case 1.
        memo[l][r][k] = dfs(boxes, l, r - 1, 0, &memo) + (k + 1) * (k + 1)
        
        // Case 2.
        for i in l..<r {
            if boxes[i] == boxes[r] {
                memo[l][r][k] = max(memo[l][r][k], dfs(boxes, l, i, k + 1, &memo) + dfs(boxes, i + 1, r - 1, 0, &memo))
            }
        }
        return memo[l][r][k]
    }
}

class Xoo546_A {
    func removeBoxes(_ boxes: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo546_1 {
    func removeBoxes(_ boxes: [Int]) -> Int {
        guard !boxes.isEmpty else { return 0 }
        
        var res = 0
        for i in 0..<boxes.count {
            var j = i + 1
            while j < boxes.count && boxes[i] == boxes[j] { j += 1 }
            
            var newboxes = boxes
            for k in (i..<j).reversed() where k < boxes.count {
                newboxes.remove(at: k)
            }
            
            res = max(res, removeBoxes(newboxes) + (j - i) * (j - i))
        }
        return res
    }
}

// MARK: - 2. Top-Down Dynamic Programming

class Xoo546_2 {
    func removeBoxes(_ boxes: [Int]) -> Int {
        0
    }
}
