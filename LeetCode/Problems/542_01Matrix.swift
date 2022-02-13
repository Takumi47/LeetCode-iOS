//
//  542_01Matrix.swift
//  LeetCode
//
//  Created by xander on 2021/7/29.
//

import Foundation

class Xoo542 {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        []
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo542_1 {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        var dist: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: m)
        for i in 0..<m {
            for j in 0..<n {
                if mat[i][j] == 0 {
                    dist[i][j] = 0
                } else {
                    for r in 0..<m {
                        for c in 0..<n {
                            if mat[r][c] == 0 {
                                let d = abs(r - i) + abs(c - j)
                                dist[i][j] = min(dist[i][j], d)
                            }
                        }
                    }
                }
            }
        }
        return dist
    }
}

// MARK: - 2. Using BFS

class Xoo542_2 {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        var dist: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: m)
        var queue = Queue<(r: Int, c: Int)>()
        
        for i in 0..<m {
            for j in 0..<n {
                if mat[i][j] == 0 {
                    dist[i][j] = 0
                    queue.enqueue((i, j))
                }
            }
        }
        
        let directions = [-1, 0, 1, 0, -1]
        while let loc = queue.dequeue() {
            for d in 0..<4 {
                let r = loc.r + directions[d]
                let c = loc.c + directions[d + 1]
                
                guard r >= 0 && c >= 0 && r < m && c < n && dist[r][c] > dist[loc.r][loc.c] + 1 else { continue }
                dist[r][c] = dist[loc.r][loc.c] + 1
                queue.enqueue((r, c))
            }
        }
        
        return dist
    }
}

// MARK: - 3. Dynamic Programming

class Xoo542_3 {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        var dist: [[Int]] = Array(repeating: Array(repeating: Int.max - 100000, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                if mat[i][j] == 0 {
                    dist[i][j] = 0
                } else {
                    if i > 0 { dist[i][j] = min(dist[i][j], dist[i - 1][j] + 1) }
                    if j > 0 { dist[i][j] = min(dist[i][j], dist[i][j - 1] + 1) }
                }
            }
        }

        for i in (0..<m).reversed() {
            for j in (0..<n).reversed() {
                if mat[i][j] == 0 {
                    dist[i][j] = 0
                } else {
                    if i < m - 1 { dist[i][j] = min(dist[i][j], dist[i + 1][j] + 1) }
                    if j < n - 1 { dist[i][j] = min(dist[i][j], dist[i][j + 1] + 1) }
                }
            }
        }

        return dist
    }
}
