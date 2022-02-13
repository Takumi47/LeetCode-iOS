//
//  Stack.swift
//  LeetCode
//
//  Created by xander on 2021/6/1.
//

import Foundation

class Stack<T> {
    private var storage: [T] = []
    var isEmpty: Bool { storage.isEmpty }
    var count: Int { storage.count }
    var peek: T? { storage.last }
    
    func push(_ val: T) {
        storage.append(val)
    }
    
    func pop() -> T? {
        storage.popLast()
    }
    
    func toArray() -> [T] {
        storage
    }
}
