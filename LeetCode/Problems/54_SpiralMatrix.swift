//
//  54_SpiralMatrix.swift
//  LeetCode
//
//  Created by xander on 2021/9/16.
//

import Foundation

class Xoo54 {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let m = matrix.count
        let n = matrix[0].count
        var seen: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
        let dirs = [0, 1, 0, -1, 0]

        var ans: [Int] = []
        var i = 0
        var j = 0
        var k = 0
        while ans.count < m * n {
            ans.append(matrix[i][j])
            seen[i][j] = true
            
            var r = i + dirs[k]
            var c = j + dirs[k + 1]

            if !isValid(m, n, r, c, &seen) {
                k = (k + 1) % 4
                r = i + dirs[k]
                c = j + dirs[k + 1]
            }
            
            i = r
            j = c
        }
        return ans
    }
    
    private func isValid(_ m: Int, _ n: Int, _ r: Int, _ c: Int, _ seen: inout [[Bool]]) -> Bool {
        guard r >= 0 && r < m && c >= 0 && c < n && !seen[r][c] else { return false }
        return true
    }
}

// MARK: - 1. Set Up Boundaries

class Xoo54_1 {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        []
    }
}

// MARK: - 2. Mark Visited Elements

class Xoo54_2 {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        []
    }
}
