//
//  225_ImplementStackUsingQueues.swift
//  LeetCode
//
//  Created by xander on 2022/1/18.
//

import Foundation

class MyStack {

    private var q = Queue<Int>()
    
    init() {}
    
    func push(_ x: Int) {
        q.enqueue(x)
        for _ in 0..<q.count - 1 {
            q.enqueue(q.dequeue()!)
        }
    }
    
    func pop() -> Int {
        q.dequeue()!
    }
    
    func top() -> Int {
        q.peek!
    }
    
    func empty() -> Bool {
        q.isEmpty
    }
}
