//
//  Queue.swift
//  LeetCode
//
//  Created by xander on 2021/6/4.
//

import Foundation

struct Queue<T> {
    private var leftStack: [T] = [] // Dequeue
    private var rightStack: [T] = [] // Enqueue
    
    var isEmpty: Bool { leftStack.isEmpty && rightStack.isEmpty }
    var count: Int { leftStack.count + rightStack.count }
    var peek: T? { leftStack.isEmpty ? rightStack.first : leftStack.last }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
}
