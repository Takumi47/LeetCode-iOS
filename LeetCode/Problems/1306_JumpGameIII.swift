//
//  1306_JumpGameIII.swift
//  LeetCode
//
//  Created by xander on 2021/12/10.
//

import Foundation

class Xoo1306 {
    func canReach(_ arr: [Int], _ start: Int) -> Bool {
        let n = arr.count
        var visited: [Bool] = Array(repeating: false, count: n)
        return dfs(arr, start, &visited)
    }
    
    private func dfs(_ arr: [Int], _ start: Int, _ visited: inout [Bool]) -> Bool {
        let n = arr.count
        guard start >= 0 && start < n else { return false }
        if arr[start] == 0 { return true }
        if visited[start] { return false }
        visited[start] = true
        
        if dfs(arr, start - arr[start], &visited) { return true }
        if dfs(arr, start + arr[start], &visited) { return true }
        return false
    }
}

// MARK: - 1. Breadth-First Search

class Xoo1306_1 {
    func canReach(_ arr: [Int], _ start: Int) -> Bool {
        false
    }
}

// MARK: - 2. Depth-First Search

class Xoo1306_2 {
    func canReach(_ arr: [Int], _ start: Int) -> Bool {
        false
    }
}
