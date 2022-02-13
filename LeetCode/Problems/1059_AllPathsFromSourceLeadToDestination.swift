//
//  1059_AllPathsFromSourceLeadToDestination.swift
//  LeetCode
//
//  Created by xander on 2021/6/22.
//

import Foundation

// MARK: - DFS

class Xoo1059 {
    enum Color {
        case white
        case gray
        case black
    }
    
    func leadsToDestination(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        let graph: [[Int]] = buildDigraph(n, edges)
        var states: [Color] = Array(repeating: .white, count: n)
        return leadsToDest(graph, source, destination, &states)
    }
    
    private func leadsToDest(_ graph: [[Int]], _ node: Int, _ dest: Int, _ states: inout [Color]) -> Bool {
        guard states[node] == .white else { return states[node] == .black }
        if graph[node].isEmpty { return node == dest }
        
        states[node] = .gray
        
        for next in graph[node] {
            if !leadsToDest(graph, next, dest, &states) { return false }
        }
        
        states[node] = .black
        return true
    }
    
    private func buildDigraph(_ n: Int, _ edges: [[Int]]) -> [[Int]] {
        var graph: [[Int]] = Array(repeating: [], count: n)
        for edge in edges {
            graph[edge[0]].append(edge[1])
        }
        return graph
    }
}
