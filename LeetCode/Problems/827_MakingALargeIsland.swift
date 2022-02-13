//
//  827_MakingALargeIsland.swift
//  LeetCode
//
//  Created by xander on 2021/8/1.
//

import Foundation

class Xoo827 {
    func largestIsland(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var grid = grid
        var color = 1
        var areas: [Int: Int] = [:] // color -> area
        var ans = 0
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 {
                    color += 1
                    areas[color] = getAreaDFS(&grid, i, j, color)
                    ans = max(ans, areas[color]!)
                }
            }
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 0 {
                    var area = 1
                    let colors: Set<Int> = [
                        getColor(grid, i + 1, j),
                        getColor(grid, i - 1, j),
                        getColor(grid, i, j + 1),
                        getColor(grid, i, j - 1)
                    ]
                    for color in colors {
                        area += areas[color, default: 0]
                    }
                    ans = max(ans, area)
                }
            }
        }
        
        return ans
    }
    
    private func getAreaDFS(_ grid: inout [[Int]], _ r: Int, _ c: Int, _ color: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        guard r >= 0 && c >= 0 && r < m && c < n && grid[r][c] == 1 else { return 0 }
        grid[r][c] = color
        return 1 + getAreaDFS(&grid, r + 1, c, color)
            + getAreaDFS(&grid, r - 1, c, color)
            + getAreaDFS(&grid, r, c + 1, color)
            + getAreaDFS(&grid, r, c - 1, color)
    }
    
    private func getColor(_ grid: [[Int]], _ r: Int, _ c: Int) -> Int {
        let m = grid.count
        let n = grid[0].count
        return (r >= 0 && c >= 0 && r < m && c < n) ? grid[r][c] : 0
    }
}

// MARK: - 1. Naive Depth First Search

class Xoo827_1 {
    func largestIsland(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var grid = grid
        
        var ans = 0
        var hasZero = false
        for r in 0..<n {
            for c in 0..<n {
                if grid[r][c] == 0 {
                    hasZero = true
                    grid[r][c] = 1
                    ans = max(ans, check(grid, r, c))
                    grid[r][c] = 0
                }
            }
        }
        return hasZero ? ans : n * n
    }
    
    private func check(_ grid: [[Int]], _ row: Int, _ col: Int) -> Int {
        let n = grid.count
        let stack = Stack<Int>()
        var seen: Set<Int> = []
        
        stack.push(row * n + col)
        seen.insert(row * n + col)
        
        let directions = [-1, 0, 1, 0, -1]
        while let loc = stack.pop() {
            let r = loc / n
            let c = loc % n
            for d in 0..<4 {
                let nr = r + directions[d]
                let nc = c + directions[d + 1]
                if !seen.contains(nr * n + nc)
                    && nr >= 0
                    && nc >= 0
                    && nr < n
                    && nc < n
                    && grid[nr][nc] == 1 {
                    stack.push(nr * n + nc)
                    seen.insert(nr * n + nc)
                }
            }
        }
        return seen.count
    }
}

// MARK: - 2. Component Sizes

class Xoo827_2 {
    func largestIsland(_ grid: [[Int]]) -> Int {
        0
    }
}
