//
//  269_AlienDictionary.swift
//  LeetCode
//
//  Created by xander on 2021/7/22.
//

import Foundation

class Xoo269 {
    func alienOrder(_ words: [String]) -> String {
        var graph: [Character: Set<Character>] = [:]
        buildGraph(words, &graph)
        
        var visited: [Character: Int] = [:]
        var orderedList = ""
        for char in graph.keys {
            if topologicalSort(char, graph, &visited, &orderedList) { return "" }
        }
        
        let size = graph.count
        return orderedList.count == size ? orderedList : ""
    }
    
    private func buildGraph(_ words: [String], _ graph: inout [Character: Set<Character>]) {
        for word in words {
            for char in word {
                graph[char] = []
            }
        }
        
        for i in 1..<words.count {
            let w1 = Array(words[i - 1])
            let w2 = Array(words[i])
            let len = min(w1.count, w2.count)
            
            for j in 0..<len {
                if w1[j] != w2[j] {
                    graph[w1[j]]!.insert(w2[j])
                    break
                }
                
                // Case: ["abc","ab"]
                if j == len - 1 && w1.count > w2.count {
                    graph.removeAll()
                    return
                }
            }
        }
    }
    
    private func topologicalSort(_ char: Character, _ graph: [Character: Set<Character>], _ visited: inout [Character: Int], _ orderedList: inout String) -> Bool {
        if visited[char] == 1 { return true } // has a cycle
        if visited[char] == 2 { return false }
        visited[char] = 1
        for n in graph[char]! {
            if topologicalSort(n, graph, &visited, &orderedList) { return true }
        }
        visited[char] = 2
        orderedList = "\(char)" + orderedList
        return false
    }
}

// MARK: - 1. BFS

class Xoo269_1 {
    func alienOrder(_ words: [String]) -> String {
        ""
    }
}

// MARK: - 2. DFS

class Xoo269_2 {
    func alienOrder(_ words: [String]) -> String {
        ""
    }
}
