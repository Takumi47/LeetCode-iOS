//
//  841_KeysAndRooms.swift
//  LeetCode
//
//  Created by xander on 2022/1/24.
//

import Foundation

class Xoo841 {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var visited: Set<Int> = []
        dfs(rooms, 0, &visited)
        return visited.count == rooms.count
    }
    
    private func dfs(_ rooms: [[Int]], _ curr: Int, _ visited: inout Set<Int>) {
        guard !visited.contains(curr) else { return }
        visited.insert(curr)
        for next in rooms[curr] {
            dfs(rooms, next, &visited)
        }
    }
}

// MARK: - 1. Depth-First Search

class Xoo841_1 {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        false
    }
}
