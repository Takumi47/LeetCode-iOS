//
//  1345_JumpGameIV.swift
//  LeetCode
//
//  Created by xander on 2022/1/15.
//

import Foundation

class Xoo1345 {
    func minJumps(_ arr: [Int]) -> Int {
        let n = arr.count
        guard n > 1 else { return 0 }
        
        var map: [Int: [Int]] = [:]
        for i in 0..<n {
            map[arr[i], default: []].append(i)
        }
        
        var queue = Queue<Int>()
        var visited: [Int] = Array(repeating: 0, count: n)
        queue.enqueue(0)
        visited[0] = 1
        
        var steps = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let index = queue.dequeue() else { continue }
                
                if index + 1 < n && visited[index + 1] == 0 {
                    queue.enqueue(index + 1)
                    visited[index + 1] = 1
                }
                
                if index - 1 >= 0 && visited[index - 1] == 0 {
                    queue.enqueue(index - 1)
                    visited[index - 1] = 1
                }
                
                if let indexs = map[arr[index]] {
                    for idx in indexs {
                        queue.enqueue(idx)
                        visited[idx] = 1
                    }
                    map.removeValue(forKey: arr[index])
                }
            }
            
            steps += 1
            if visited[n - 1] == 1 { break }
        }
        return steps
    }
}

// MARK: - 1. Breadth-First Search

class Xoo1345_1 {
    func minJumps(_ arr: [Int]) -> Int {
        0
    }
}
