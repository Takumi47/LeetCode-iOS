//
//  695_MaxAreaOfIsland.swift
//  LeetCode
//
//  Created by xander on 2021/6/1.
//

import Foundation

// MARK: - 1. DFS (Recursive)

class Xoo695_1 {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var seen: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        var maxArea = 0
        for r in 0..<grid.count {
            for c in 0..<grid[0].count {
                let area = area(grid, &seen, r, c)
                maxArea = max(maxArea, area)
            }
        }
        return maxArea
    }
    
    private func area(_ grid: [[Int]], _ seen: inout [[Bool]], _ r: Int, _ c: Int) -> Int {
        if r < 0
            || r >= grid.count
            || c < 0
            || c >= grid[0].count
            || grid[r][c] == 0
            || seen[r][c] { return 0 }
        
        seen[r][c] = true
        return 1
            + area(grid, &seen, r + 1, c)
            + area(grid, &seen, r - 1, c)
            + area(grid, &seen, r, c + 1)
            + area(grid, &seen, r, c - 1)
    }
}

// MARK: - 2. DFS (Iterative)

class Xoo695_2 {
    struct Pos: Hashable {
        let row: Int
        let col: Int
        
        init(_ row: Int, _ col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let offsets = [(1, 0), (-1, 0), (0, 1), (0, -1)]
        var seen: Set<Pos> = []
        
        var maxArea = 0
        for r in 0..<grid.count {
            for c in 0..<grid[0].count {
                let currPos = Pos(r, c)
                guard grid[r][c] == 1 && !seen.contains(currPos) else { continue }
                
                var area = 0
                let stack = Stack<Pos>()
                stack.push(currPos)
                seen.insert(currPos)
                while let pos = stack.pop() {
                    area += 1
                    for offset in offsets {
                        let row = pos.row + offset.0
                        let col = pos.col + offset.1
                        let newPos = Pos(row, col)
                        
                        if row >= 0
                            && row < grid.count
                            && col >= 0
                            && col < grid[0].count
                            && grid[row][col] == 1
                            && !seen.contains(newPos) {
                            
                            stack.push(newPos)
                            seen.insert(newPos)
                        }
                    }
                }
                maxArea = max(maxArea, area)
            }
        }
        return maxArea
    }
}

// MARK: - 3. DFS (Recursive)

class Xoo695_3 {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var maxArea = 0
        for r in 0..<grid.count {
            for c in 0..<grid[0].count {
                guard grid[r][c] == 1 else { continue }
                var area = 0
                dfs(&grid, r, c, &area)
                maxArea = max(maxArea, area)
            }
        }
        return maxArea
    }
    
    private func dfs(_ grid: inout [[Int]], _ r: Int, _ c: Int, _ count: inout Int) {
        guard r >= 0
                && r < grid.count
                && c >= 0
                && c < grid[0].count
                && grid[r][c] == 1 else { return }
        
        grid[r][c] = 0
        count += 1
        dfs(&grid, r + 1, c, &count)
        dfs(&grid, r - 1, c, &count)
        dfs(&grid, r, c + 1, &count)
        dfs(&grid, r, c - 1, &count)
    }
}
