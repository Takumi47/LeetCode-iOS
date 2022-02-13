//
//  73_SetMatrixZeroes.swift
//  LeetCode
//
//  Created by xander on 2021/8/13.
//

import Foundation

class Xoo73 {
    func setZeroes(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count
        var rows: [Bool] = Array(repeating: false, count: m)
        var cols: [Bool] = Array(repeating: false, count: n)
        
        for i in 0..<m {
            for j in 0..<n {
                rows[i] = rows[i] || (matrix[i][j] == 0)
                cols[j] = cols[j] || (matrix[i][j] == 0)
            }
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if rows[i] || cols[j] {
                    matrix[i][j] = 0
                }
            }
        }
    }
}

// MARK: - 1. Additional Memory Approach

class Xoo73_1 {
    func setZeroes(_ matrix: inout [[Int]]) {
    }
}

// MARK: - 2. O(!) Space, Efficient Solution

class Xoo73_2 {
    func setZeroes(_ matrix: inout [[Int]]) {
    }
}
