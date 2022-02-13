//
//  834_SumOfDistancesInTree.swift
//  LeetCode
//
//  Created by xander on 2021/9/5.
//

import Foundation

class Xoo834 {
    func sumOfDistancesInTree(_ n: Int, _ edges: [[Int]]) -> [Int] {
        []
    }
}

// MARK: - 1. Subtree Sum and Count

class Xoo834_1 {
    func sumOfDistancesInTree(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var ans: [Int] = Array(repeating: 0, count: n)
        var count: [Int] = Array(repeating: 1, count: n) // the number of nodes in subtree
        
        var graph: [Set<Int>] = Array(repeating: [], count: n)
        for edge in edges {
            graph[edge[0]].insert(edge[1])
            graph[edge[1]].insert(edge[0])
        }
        
        dfs(0, -1, graph, &count, &ans) // Step1: post-order traversal
        dfs2(0, -1, graph, &count, &ans) // Step2: pre-order traversal
        return ans
    }
    
    private func dfs(_ node: Int, _ parent: Int, _ graph: [Set<Int>], _ count: inout [Int], _ ans: inout [Int]) {
        for child in graph[node] {
            guard child != parent else { continue }
            dfs(child, node, graph, &count, &ans)
            count[node] += count[child]
            ans[node] += ans[child] + count[child]
        }
    }
    
    private func dfs2(_ node: Int, _ parent: Int, _ graph: [Set<Int>], _ count: inout [Int], _ ans: inout [Int]) {
        let n = graph.count
        for child in graph[node] {
            guard child != parent else { continue }
            ans[child] = (ans[node] - count[child]) + (n - count[child])
            dfs2(child, node, graph, &count, &ans)
        }
    }
}
