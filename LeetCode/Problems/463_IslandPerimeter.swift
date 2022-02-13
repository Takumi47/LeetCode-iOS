//
//  463_IslandPerimeter.swift
//  LeetCode
//
//  Created by xander on 2021/10/5.
//

import Foundation

class Xoo463 {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var perimeter = 0
        let dirs = [0, 1, 0, -1, 0]
        for i in 0..<m {
            for j in 0..<n {
                guard grid[i][j] == 1 else { continue }
                for d in 0..<4 {
                    let x = i + dirs[d]
                    let y = j + dirs[d + 1]
                    if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] == 0 {
                        perimeter += 1
                    }
                }
            }
        }
        return perimeter
    }
}

// MARK: - 1. Simple Counting

class Xoo463_1 {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. Better Counting

class Xoo463_2 {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        0
    }
}
