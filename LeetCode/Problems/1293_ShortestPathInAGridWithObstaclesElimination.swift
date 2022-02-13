//
//  1293_ShortestPathInAGridWithObstaclesElimination.swift
//  LeetCode
//
//  Created by xander on 2021/9/25.
//

import Foundation

class Xoo1293 {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        let dirs = [0, 1, 0, -1, 0]
        var seen: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: m)
        var queue = Queue<(Int, Int, Int)>() // (x, y, o)
        
        var steps = 0
        seen[0][0] = 0
        queue.enqueue((0, 0, 0))
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let (cx, cy, co) = queue.dequeue() else { continue }
                if cx == m - 1 && cy == n - 1 { return steps }
                
                for i in 0..<4 {
                    let x = cx + dirs[i]
                    let y = cy + dirs[i + 1]
                    guard x >= 0 && x < m && y >= 0 && y < n else { continue }
                    
                    let o = co + grid[x][y]
                    guard o < seen[x][y] && o <= k else { continue }
                    seen[x][y] = o
                    queue.enqueue((x, y, o))
                }
            }
            steps += 1
        }
        return -1
    }
}

class Xoo1293_A {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        let dirs = [0, 1, 0, -1, 0]
        var visited: [[[Bool]]] = Array(repeating: Array(repeating: Array(repeating: false, count: 1601), count: 41), count: 41)
        var queue = Queue<(Int, Int, Int)>()
        
        visited[0][0][0] = true
        queue.enqueue((0, 0, 0))
        
        var steps = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let (cx, cy, co) = queue.dequeue() else { continue }
                if cx == m - 1 && cy == n - 1 { return steps }
                
                for i in 0..<4 {
                    let x = cx + dirs[i]
                    let y = cy + dirs[i + 1]
                    guard x >= 0 && x < m && y >= 0 && y < n else { continue }
                    
                    let o = co + grid[x][y]
                    guard !visited[x][y][o] && o <= k else { continue }
                    visited[x][y][o] = true
                    queue.enqueue((x, y, o))
                }
            }
            steps += 1
        }
        return -1
    }
}

// MARK: - 1. BFS

class Xoo1293_1 {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        0
    }
}

// MARK: - 2. A* Algorithm

class Xoo1293_2 {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        0
    }
}
