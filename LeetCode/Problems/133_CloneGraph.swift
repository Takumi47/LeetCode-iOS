//
//  133_CloneGraph.swift
//  LeetCode
//
//  Created by xander on 2022/1/16.
//

import Foundation

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Xoo133 {
    func cloneGraph(_ node: Node3?) -> Node3? {
        nil
    }
}

// MARK: - 1. Depth First Search

class Xoo133_1 {
    func cloneGraph(_ node: Node3?) -> Node3? {
        var visited: [Int: Node3] = [:]
        return dfs(node, &visited)
    }
    
    private func dfs(_ node: Node3?, _ visited: inout [Int: Node3]) -> Node3? {
        guard let node = node else { return nil }
        if let node = visited[node.val] { return node }
        let cloneNode = Node3(node.val)
        visited[node.val] = cloneNode
        for neighbor in node.neighbors {
            cloneNode.neighbors.append(dfs(neighbor, &visited))
        }
        return cloneNode
    }
}

// MARK: - 2. Breadth First Search

class Xoo133_2 {
    func cloneGraph(_ node: Node3?) -> Node3? {
        nil
    }
}
