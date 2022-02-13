//
//  994_RottingOranges.swift
//  LeetCode
//
//  Created by xander on 2021/10/29.
//

import Foundation

class Xoo994 {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 1. BFS

class Xoo994_1 {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var grid = grid
        let dirs = [0, 1, 0, -1, 0]
        var freshOranges = 0
        var queue = Queue<(Int, Int)>() // (row, col)
        
        for r in 0..<m {
            for c in 0..<n {
                if grid[r][c] == 1 {
                    freshOranges += 1
                } else if grid[r][c] == 2 {
                    queue.enqueue((r, c))
                }
            }
        }
        queue.enqueue((-1, -1))
        
        var minsElapsed = -1
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let (cx, cy) = queue.dequeue() else { continue }
                if cx == -1 {
                    minsElapsed += 1
                    if !queue.isEmpty {
                        queue.enqueue((-1, -1))
                    }
                }
                for d in 0..<4 {
                    let x = cx + dirs[d]
                    let y = cy + dirs[d + 1]
                    guard x >= 0 && x < m && y >= 0 && y < n && grid[x][y] == 1 else { continue }
                    grid[x][y] = 2
                    freshOranges -= 1
                    queue.enqueue((x, y))
                }
            }
        }
        
        return freshOranges == 0 ? minsElapsed : -1
    }
}

// MARK: - 2. In-place BFS

class Xoo994_2 {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        0
    }
}
