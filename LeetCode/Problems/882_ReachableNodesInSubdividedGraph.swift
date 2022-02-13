//
//  882_ReachableNodesInSubdividedGraph.swift
//  LeetCode
//
//  Created by xander on 2021/9/13.
//

import Foundation

class Xoo882 {
    func reachableNodes(_ edges: [[Int]], _ maxMoves: Int, _ n: Int) -> Int {
        var graph: [Int: [Int: Int]] = [:]
        for edge in edges {
            graph[edge[0], default: [:]][edge[1]] = edge[2]
            graph[edge[1], default: [:]][edge[0]] = edge[2]
        }
        
        let q = PriorityQueue<[Int]>() { $0[0] > $1[0] } // [HP, node]
        var seen: [Int: Int] = [:]
        
        q.enqueue([maxMoves, 0])
        
        while let p = q.dequeue() {
            let hp = p[0]
            let curr = p[1]
            
            guard seen[curr] == nil else { continue }
            seen[curr] = hp
            
            for (next, num) in graph[curr, default: [:]] {
                let nextHP = hp - num - 1
                guard seen[next] == nil && nextHP >= 0 else { continue }
                q.enqueue([nextHP, next])
            }
        }
        
        var ans = seen.count
        for edge in edges {
            let uv = seen[edge[0], default: 0]
            let vu = seen[edge[1], default: 0]
            ans += min(edge[2], uv + vu)
        }
        return ans
    }
}

// MARK: - 1. Dijkstra's

class Xoo882_1 {
    func reachableNodes(_ edges: [[Int]], _ maxMoves: Int, _ n: Int) -> Int {
        0
    }
}
