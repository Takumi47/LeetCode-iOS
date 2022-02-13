//
//  207_CourseSchedule.swift
//  LeetCode
//
//  Created by xander on 2021/7/22.
//

import Foundation
/*
 Topological sorting with DFS, O(n)
 
 1.
 for each node:
    if not marked:
        if (dfs(node) == CYCLE) return CYCLE
 return OK
 
 2.
 dfs(node):
    if node is marked as `visited`: return OK
    if node is marked as `visiting`: return CYCLE
    mark node as `visiting`
    for each new_node in node.neighbors:
        if dfs(new_node) == CYCLE: return CYCLE
    mark node as `visited`
    // add node to the head of ordered_list
    return OK
 */
class Xoo207 {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph: [[Int]] = Array(repeating: [], count: numCourses)
        for p in prerequisites {
            graph[p[1]].append(p[0])
        }
        
        // 0: unknown, 1: visiting, 2: visited
        var visited: [Int] = Array(repeating: 0, count: numCourses)
        for i in 0..<numCourses {
            if dfs(i, graph, &visited) { return false } // has a cycyle
        }
        return true
    }
    
    private func dfs(_ course: Int, _ graph: [[Int]], _ visited: inout [Int]) -> Bool {
        if visited[course] == 1 { return true } // has a cycle
        if visited[course] == 2 { return false }
        
        visited[course] = 1
        
        for n in graph[course] {
            if dfs(n, graph, &visited) { return true }
        }
        
        visited[course] = 2
        return false
    }
}

// MARK: - 1. Backtracking

class Xoo207_1 {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        false
    }
}

// MARK: - 2. Postorder DFS

class Xoo207_2 {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        false
    }
}

// MARK: - 3. Topological Sort

class Xoo207_3 {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        false
    }
}
