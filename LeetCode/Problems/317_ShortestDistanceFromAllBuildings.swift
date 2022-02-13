//
//  317_ShortestDistanceFromAllBuildings.swift
//  LeetCode
//
//  Created by xander on 2021/9/28.
//

import Foundation

class Xoo317 {
    func shortestDistance(_ grid: [[Int]]) -> Int {
        0
    }
}

// MARK: - 1. BFS from Empty Land to All Houses

class Xoo317_1 {
    func shortestDistance(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var grid = grid
        var minDistance = Int.max
        let totalHouses = grid.flatMap { $0 }.filter { $0 == 1 }.count
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 0 {
                    minDistance = min(minDistance, bfs(&grid, i, j, totalHouses))
                }
            }
        }
        
        return minDistance == Int.max ? -1 : minDistance
    }
    
    private func bfs(_ grid: inout [[Int]], _ i: Int, _ j: Int, _ totalHouses: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        let dirs = [0, 1, 0, -1, 0]
        var reached = 0
        var distances = 0
        var queue = Queue<(Int, Int)>()
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
        queue.enqueue((i, j))
        visited[i][j] = true
        
        var steps = 0
        while !queue.isEmpty && reached != totalHouses {
            for _ in 0..<queue.count {
                guard let (cx, cy) = queue.dequeue() else { continue }
                if grid[cx][cy] == 1 {
                    reached += 1
                    distances += steps
                    continue
                }
                
                for d in 0..<4 {
                    let x = cx + dirs[d]
                    let y = cy + dirs[d + 1]
                    if x >= 0 && x < m && y >= 0 && y < n && !visited[x][y] && grid[x][y] != 2 {
                        queue.enqueue((x, y))
                        visited[x][y] = true
                    }
                }
            }
            steps += 1
        }
        
        if reached != totalHouses {
            for r in 0..<m {
                for c in 0..<n {
                    if grid[r][c] == 0 && visited[r][c] {
                        grid[r][c] = 2
                    }
                }
            }
            return Int.max
        }
        
        return distances
    }
}

// MARK: - 2. BFS from Houses to Empty Land

class Xoo317_2 {
    func shortestDistance(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var minDistance = Int.max
        var totalHouses = 0
        var distances: [[[Int]]] = Array(repeating: Array(repeating: [0, 0], count: n), count: m)
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 {
                    totalHouses += 1
                    bfs(grid, &distances, i, j)
                }
            }
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if distances[i][j][1] == totalHouses {
                    minDistance = min(minDistance, distances[i][j][0])
                }
            }
        }
        
        return minDistance == Int.max ? -1 : minDistance
    }
    
    private func bfs(_ grid: [[Int]], _ distances: inout [[[Int]]], _ i: Int, _ j: Int) {
        let m = grid.count
        let n = grid[0].count
        let dirs = [0, 1, 0, -1, 0]
        var queue = Queue<(Int, Int)>()
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
        queue.enqueue((i, j))
        visited[i][j] = true
        
        var steps = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let (cx, cy) = queue.dequeue() else { continue }
                if grid[cx][cy] == 0 {
                    distances[cx][cy][0] += steps
                    distances[cx][cy][1] += 1
                }
                
                for d in 0..<4 {
                    let x = cx + dirs[d]
                    let y = cy + dirs[d + 1]
                    guard x >= 0 && x < m && y >= 0 && y < n && !visited[x][y] && grid[x][y] == 0 else { continue }
                    queue.enqueue((x, y))
                    visited[x][y] = true
                }
            }
            steps += 1
        }
    }
}

// MARK: - 3. BFS from Houses to Empty Land (Optimized)

class Xoo317_3 {
    func shortestDistance(_ grid: [[Int]]) -> Int {
        0
    }
}
