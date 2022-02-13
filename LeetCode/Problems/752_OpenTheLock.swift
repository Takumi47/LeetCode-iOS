//
//  752_OpenTheLock.swift
//  LeetCode
//
//  Created by xander on 2021/6/4.
//

import Foundation

class Xoo752 {
    func openLock(_ deadends: [String], _ target: String) -> Int {
        var visited = Set(deadends)
        var head: Set<String> = ["0000"]
        var tail: Set<String> = [target]
        var current: Set<String> = []
        
        var steps = 0
        while !head.isEmpty && !tail.isEmpty {
            if head.count > tail.count {
                current = head
                head = tail
                tail = current
            }
            current = []
            
            for lock in head {
                if tail.contains(lock) { return steps }
                if !visited.insert(lock).inserted { continue }
                
                var digits = Array(lock).map { "\($0)" }
                for w in 0..<4 {
                    let digit = digits[w]
                    for d in [-1, 1] {
                        digits[w] = String((Int(digit)! + d + 10) % 10)
                        let newLock = digits.joined()
                        
                        if !visited.contains(newLock) {
                            current.insert(newLock)
                        }
                    }
                    digits[w] = digit
                }
            }
            
            head = current
            steps += 1
        }
        return -1
    }
}

class Xoo752_A {
    func openLock(_ deadends: [String], _ target: String) -> Int {
        let start = "0000"
        guard !deadends.contains(start) else { return -1 }
        let deadends = Set(deadends)
        var queue = Queue<String>()
        var visited: Set<String> = []
        queue.enqueue(start)
        visited.insert(start)
        
        var steps = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let node = queue.dequeue(), !deadends.contains(node) else { continue }
                if node == target { return steps }
                
                for i in 0..<4 {
                    for j in [-1, 1] {
                        var curr = node.map(String.init)
                        curr[i] = String((Int(curr[i])! + j + 10) % 10)
                        let next = curr.joined()
                        
                        guard !visited.contains(next) else { continue }
                        queue.enqueue(next)
                        visited.insert(next)
                    }
                }
            }
            steps += 1
        }
        return -1
    }
}

class Xoo752_B {
    func openLock(_ deadends: [String], _ target: String) -> Int {
        let start = "0000"
        guard !deadends.contains(start) else { return -1 }
        var visited = Set(deadends)
        var head: Set<String> = [start]
        var tail: Set<String> = [target]
        var steps = 0
        while !head.isEmpty && !tail.isEmpty {
            var curr: Set<String>
            if head.count > tail.count {
                curr = head
                head = tail
                tail = curr
            }
            curr = []
            
            for lock in head {
                if tail.contains(lock) { return steps }
                if !visited.insert(lock).inserted { continue }
                
                for i in 0..<4 {
                    for j in [-1, 1] {
                        var digits = lock.map(String.init)
                        digits[i] = String((Int(digits[i])! + j + 10) % 10)
                        let newLock = digits.joined()
                        if !visited.contains(newLock) {
                            curr.insert(newLock)
                        }
                    }
                }
            }
            head = curr
            steps += 1
        }
        return -1
    }
}

// MARK: - 1. BFS

class Xoo752_1 {
    func openLock(_ deadends: [String], _ target: String) -> Int {
        let dead = Set(deadends)
        
        var queue = Queue<String>()
        queue.enqueue("0000")
        
        var seen: Set<String> = []
        seen.insert("0000")
        
        var depth = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                guard let node = queue.dequeue(), !dead.contains(node) else { continue }
                if node == target { return depth }
                
                for w in 0..<4 {
                    for d in [-1, 1] {
                        var digits = Array(node).map { "\($0)" }
                        digits[w] = String((Int(digits[w])! + d + 10) % 10)
                        let newState = digits.joined()
                        
                        if !seen.contains(newState) {
                            seen.insert(newState)
                            queue.enqueue(newState)
                        }
                    }
                }
            }
            depth += 1
        }
        
        return -1
    }
}
