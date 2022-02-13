//
//  566_ReshapeTheMatrix.swift
//  LeetCode
//
//  Created by xander on 2021/7/5.
//

import Foundation

class Xoo566 {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        guard !mat.isEmpty && m * n == r * c else { return mat }
        var res: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        for i in 0..<m * n {
            let r1 = i / n
            let c1 = i % n
            let r2 = i / c
            let c2 = i % c
            res[r2][c2] = mat[r1][c1]
        }
        return res
    }
}

// MARK: - 1. Using Queue

class Xoo566_1 {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        guard !mat.isEmpty && m * n == r * c else { return mat }
        
        var res: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        var queue = Queue<Int>()
        mat.flatMap { $0 }.forEach { queue.enqueue($0) }
        
        for i in 0..<r {
            for j in 0..<c {
                if let num = queue.dequeue() {
                    res[i][j] = num
                }
            }
        }
        return res
    }
}

// MARK: - 2. Without Using Extra Space

class Xoo566_2 {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        guard !mat.isEmpty && m * n == r * c else { return mat }
        
        var res: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        var row = 0
        var col = 0
        for i in 0..<m {
            for j in 0..<n {
                res[row][col] = mat[i][j]
                col += 1
                if col == c {
                    col = 0
                    row += 1
                }
            }
        }
        return res
    }
}

// MARK: - 3. Using division and modulus

class Xoo566_3 {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        guard !mat.isEmpty && m * n == r * c else { return mat }
        var res: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        var count = 0
        for i in 0..<m {
            for j in 0..<n {
                res[count / c][count % c] = mat[i][j]
                count += 1
            }
        }
        return res
    }
}
