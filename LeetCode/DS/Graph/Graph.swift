//
//  Graph.swift
//  LeetCode
//
//  Created by xander on 2021/8/2.
//

import Foundation

struct Edge<T>: CustomStringConvertible {
    let source: T
    let destination: T
    var weight: Int
    
    var description: String { "[\(source)-\(destination), \(weight)]" }
}

// MARK: - Undirected Weighted Graph

struct Graph<T: Hashable>: CustomStringConvertible {
    private(set) var edgeList: [Edge<T>]
    private(set) var vertices: Set<T>
    private(set) var adjacencyList: [T: [(vertex: T, weight: Int)]]
    
    init() {
        edgeList = []
        vertices = []
        adjacencyList = [:]
    }
    
    var description: String {
        var description = ""
        for edge in edgeList {
            description += "\(edge)\n"
        }
        return description
    }
    
    mutating func addEdge(between v1: T, and v2: T, weight w: Int) {
        edgeList.append(Edge(source: v1, destination: v2, weight: w))
        vertices.insert(v1)
        vertices.insert(v2)
        
        adjacencyList[v1] = adjacencyList[v1] ?? []
        adjacencyList[v1]?.append((vertex: v2, weight: w))
        
        adjacencyList[v2] = adjacencyList[v2] ?? []
        adjacencyList[v2]?.append((vertex: v1, weight: w))
    }
    
    mutating func addEdge(_ edge: Edge<T>) {
        addEdge(between: edge.source, and: edge.destination, weight: edge.weight)
    }
}
