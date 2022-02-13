//
//  232_ImplementQueueUsingStacks.swift
//  LeetCode
//
//  Created by xander on 2022/1/18.
//

import Foundation

class MyQueue {

    private let s1 = Stack<Int>() // Dequeue
    private let s2 = Stack<Int>() // Enqueue
    private var front: Int?
    
    init() {}
    
    func push(_ x: Int) {
        if s2.isEmpty {
            front = x
        }
        s2.push(x)
    }
    
    func pop() -> Int {
        if s1.isEmpty {
            while let e = s2.pop() {
                s1.push(e)
            }
        }
        return s1.pop()!
    }
    
    func peek() -> Int {
        if !s1.isEmpty { return s1.peek! }
        return front!
    }
    
    func empty() -> Bool {
        s1.isEmpty && s2.isEmpty
    }
}
