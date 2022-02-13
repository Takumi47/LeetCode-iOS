//
//  505_TheMazeII.swift
//  LeetCode
//
//  Created by xander on 2021/6/8.
//

import Foundation

// MARK: - 1. DFS (Time Limit Exceeded)

class Xoo505_1 {
    struct Pos: Hashable {
        let row: Int
        let col: Int
        
        init(_ row: Int, _ col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    func shortestDistance(_ maze: [[Int]], _ start: [Int], _ destination: [Int]) -> Int {
        let s = Pos(start[0], start[1])
        let d = Pos(destination[0], destination[1])
        var distances: [Pos: Int] = [s: 0]
        dfs(maze, s, &distances)
        return distances[d] ?? -1
    }
    
    private func dfs(_ maze: [[Int]], _ start: Pos, _ distances: inout [Pos: Int]) {
        
        func isValid(_ r: Int, _ c: Int) -> Bool {
            return r >= 0 && c >= 0 && r < maze.count && c < maze[0].count
        }
        
        let directions = [(0, 1), (0, -1), (-1, 0), (1, 0)]
        for direction in directions {
            var row = start.row + direction.0
            var col = start.col + direction.1
            var count = 0
            
            while isValid(row, col) && maze[row][col] == 0 {
                row += direction.0
                col += direction.1
                count += 1
            }
            
            let pos = Pos(row - direction.0, col - direction.1) // compensate offset due to while loop
            
            if let dist = distances[pos], dist <= distances[start]! + count { continue }
            distances[pos] = distances[start]! + count
            dfs(maze, pos, &distances)
        }
    }
}

// MARK: - 2. BFS

class Xoo505_2 {
    struct Pos: Hashable {
        let row: Int
        let col: Int
        
        init(_ row: Int, _ col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    func shortestDistance(_ maze: [[Int]], _ start: [Int], _ destination: [Int]) -> Int {
        
        func isValid(_ r: Int, _ c: Int) -> Bool {
            return r >= 0 && c >= 0 && r < maze.count && c < maze[0].count
        }
        
        let s = Pos(start[0], start[1])
        let d = Pos(destination[0], destination[1])
        var distances: [Pos: Int] = [s: 0]
        
        var queue = Queue<Pos>()
        queue.enqueue(s)
        while let start = queue.dequeue() {
            for direction in [(0, 1), (0, -1), (-1, 0), (1, 0)] {
                var row = start.row + direction.0
                var col = start.col + direction.1
                var count = 0
                
                while isValid(row, col) && maze[row][col] == 0 {
                    row += direction.0
                    col += direction.1
                    count += 1
                }
                row -= direction.0
                col -= direction.1
                
                let end = Pos(row, col)
                if let dist = distances[end], dist <= distances[start]! + count { continue }
                distances[end] = distances[start]! + count
                queue.enqueue(end)
            }
        }
        
        return distances[d] ?? -1
    }
}

// MARK: - 3. Dijkstra Algorithm

class Xoo505_3 {
    struct Pos: Hashable {
        let row: Int
        let col: Int
        
        init(_ row: Int, _ col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    func shortestDistance(_ maze: [[Int]], _ start: [Int], _ destination: [Int]) -> Int {
        let s = Pos(start[0], start[1])
        let d = Pos(destination[0], destination[1])
        var visited: Set<Pos> = []
        var distances: [Pos: Int] = [s: 0]
        dijkstra(maze, &visited, &distances)
        return distances[d] ?? -1
    }
    
    private func minDistance(_ visited: inout Set<Pos>, _ distances: inout [Pos: Int]) -> Pos? {
        var pos: Pos?
        var min = Int.max
        for (p, d) in distances {
            if !visited.contains(p), d < min {
                pos = p
                min = d
            }
        }
        return pos
    }
    
    private func dijkstra(_ maze: [[Int]], _ visited: inout Set<Pos>, _ distances: inout [Pos: Int]) {
        
        func isValid(_ r: Int, _ c: Int) -> Bool {
            return r >= 0 && c >= 0 && r < maze.count && c < maze[0].count
        }
        
        while let start = minDistance(&visited, &distances) {
            visited.insert(start)
            
            for direction in [(0, 1), (0, -1), (-1, 0), (1, 0)] {
                var row = start.row + direction.0
                var col = start.col + direction.1
                var count = 0
                
                while isValid(row, col) && maze[row][col] == 0 {
                    row += direction.0
                    col += direction.1
                    count += 1
                }
                row -= direction.0
                col -= direction.1
                
                let end = Pos(row, col)
                if let dist = distances[end], dist <= distances[start]! + count { continue }
                distances[end] = distances[start]! + count
            }
        }
    }
}

// MARK: - 4. Dijkstra Algorithm and Priority Queue

class Xoo505_4 {
    struct Pos: Hashable {
        let row: Int
        let col: Int
        
        init(_ row: Int, _ col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    func shortestDistance(_ maze: [[Int]], _ start: [Int], _ destination: [Int]) -> Int {
        let s = Pos(start[0], start[1])
        let d = Pos(destination[0], destination[1])
        var distances: [Pos: Int] = [s: 0]
        dijkstra(maze, s, &distances)
        return distances[d] ?? -1
    }
    
    private func dijkstra(_ maze: [[Int]], _ start: Pos, _ distances: inout [Pos: Int]) {
        
        func isValid(_ r: Int, _ c: Int) -> Bool {
            return r >= 0 && c >= 0 && r < maze.count && c < maze[0].count
        }
        
        let queue = PriorityQueue<Pos> { [distances] (a, b) in
            switch (distances[a], distances[b]) {
            case (nil, nil): return false
            case (_, nil): return true
            case (nil, _): return false
            case (let d1?, let d2?): return d1 < d2
            }
        }
        queue.enqueue(start)
        
        while let curr = queue.dequeue() {
            for direction in [(0, 1), (0, -1), (-1, 0), (1, 0)] {
                var row = curr.row + direction.0
                var col = curr.col + direction.1
                var count = 0
                
                while isValid(row, col) && maze[row][col] == 0 {
                    row += direction.0
                    col += direction.1
                    count += 1
                }
                row -= direction.0
                col -= direction.1
                
                let end = Pos(row, col)
                if let dist = distances[end], dist <= distances[curr]! + count { continue }
                distances[end] = distances[curr]! + count
                queue.enqueue(end)
            }
        }
    }
}
