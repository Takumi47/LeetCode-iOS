//
//  210_CourseScheduleII.swift
//  LeetCode
//
//  Created by xander on 2021/12/24.
//

import Foundation

class Xoo210 {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var graph: [[Int]] = Array(repeating: [], count: numCourses)
        for p in prerequisites {
            graph[p[1]].append(p[0])
        }
        
        // 0: unknown, 1: visiting, 2: visited
        var visited: [Int] = Array(repeating: 0, count: numCourses)
        var ans: [Int] = []
        for i in 0..<numCourses {
            if dfs(i, graph, &visited, &ans) { return [] }
        }
        return ans.reversed()
    }
    
    private func dfs(_ course: Int, _ graph: [[Int]], _ visited: inout [Int], _ ans: inout [Int]) -> Bool {
        if visited[course] == 1 { return true } // has a cycle
        if visited[course] == 2 { return false }
        
        visited[course] = 1
        
        for n in graph[course] {
            if dfs(n, graph, &visited, &ans) { return true }
        }
        
        visited[course] = 2
        ans.append(course)
        return false
    }
}

// MARK: - 1. Using Depth First Search

class Xoo210_1 {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        []
    }
}

// MARK: - 2. Using Node Indegree

class Xoo210_2 {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        []
    }
}
