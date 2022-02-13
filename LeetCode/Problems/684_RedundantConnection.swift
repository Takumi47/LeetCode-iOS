//
//  684_RedundantConnection.swift
//  LeetCode
//
//  Created by xander on 2021/6/25.
//

import Foundation

class Xoo684 {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        var parents: [Int] = Array(repeating: 0, count: edges.count + 1)
        var size: [Int] = Array(repeating: 1, count: edges.count + 1)
        
        for edge in edges {
            let u = edge[0]
            let v = edge[1]
            if parents[u] == 0 { parents[u] = u }
            if parents[v] == 0 { parents[v] = v }
            var pu = find(u, &parents)
            var pv = find(v, &parents)
            if pu == pv { return edge }
            
            if size[pu] < size[pv] { swap(&pu, &pv) }
            parents[pv] = pu
            size[pu] += size[pv]
        }
        
        return []
    }
    
    private func find(_ node: Int, _ parents: inout [Int]) -> Int {
        var curr = node
        while parents[curr] != curr {
            parents[curr] = parents[parents[curr]]
            curr = parents[curr]
        }
        return curr
    }
}

// MARK: - 1. DFS

class Xoo684_1 {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        var graph: [Int: [Int]] = [:]
        for edge in edges {
            let u = edge[0]
            let v = edge[1]
            
            var seen: Set<Int> = []
            if hasPath(u, v, graph, &seen) {
                return edge
            }
            
            if graph[u] == nil { graph[u] = [] }
            graph[u]?.append(v)
            
            if graph[v] == nil { graph[v] = [] }
            graph[v]?.append(u)
        }
        return []
    }
    
    private func hasPath(_ curr: Int, _ goal: Int, _ graph: [Int: [Int]], _ seen: inout Set<Int>) -> Bool {
        if curr == goal { return true }
        seen.insert(curr)
        
        guard let neighbors = graph[curr], let _ = graph[goal] else { return false }
        for next in neighbors {
            if seen.contains(next) { continue }
            if hasPath(next, goal, graph, &seen) { return true }
        }
        
        return false
    }
}


// MARK: - 2. Union-Find

class Xoo684_2 {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        var dsu = UnionFindWeightedQuickUnion<Int>()
        for edge in edges {
            let u = edge[0]
            let v = edge[1]
            if dsu.setOf(u) == nil { dsu.addSetWith(u) }
            if dsu.setOf(v) == nil { dsu.addSetWith(v) }
            if dsu.inSameSet(u, and: v) { return edge }
            
            dsu.unionSetsContaining(u, and: v)
        }
        return []
    }
}
