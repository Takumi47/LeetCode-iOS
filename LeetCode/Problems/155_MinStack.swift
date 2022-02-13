//
//  155_MinStack.swift
//  LeetCode
//
//  Created by xander on 2021/10/25.
//

import Foundation

// MARK: - 1. Stack of Value/ Minimum Pairs

/*
 Time Complexity : O(1) for all operations
 Space Complexity : O(n)
 */

class MinStack_1 {

    private var storage: [(val: Int, minVal: Int)] = []
    
    init() {}
    
    func push(_ val: Int) {
        if let minVal = storage.last?.minVal {
            storage.append((val, min(val, minVal)))
        } else {
            storage.append((val, val))
        }
        
    }
    
    func pop() {
        storage.removeLast()
    }
    
    func top() -> Int {
        storage[storage.count - 1].val
    }
    
    func getMin() -> Int {
        storage[storage.count - 1].minVal
    }
}

// MARK: - 2. Two Stacks

/*
 Time Complexity : O(1) for all operations
 Space Complexity : O(n)
 */

class MinStack_2 {
    
    private var stack: [Int] = []
    private var minStack: [Int] = []
    
    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || val <= minStack.last! {
            minStack.append(val)
        }
    }
    
    func pop() {
        if stack.last! == minStack.last! {
            minStack.removeLast()
        }
        stack.removeLast()
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        minStack.last!
    }
}

// MARK: - 3. Improved Two Stacks

/*
 Time Complexity : O(1) for all operations
 Space Complexity : O(n)
 */

class MinStack_3 {
    
    private var stack: [Int] = []
    private var minStack: [[Int]] = []
    
    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || val < minStack.last![0] {
            minStack.append([val, 1])
        } else if val == minStack.last![0] {
            let n = minStack.count
            let c = minStack.last![1]
            minStack[n - 1][1] = c + 1
        }
    }
    
    func pop() {
        if stack.last! == minStack.last![0] {
            let n = minStack.count
            let c = minStack.last![1]
            if c == 1 {
                minStack.removeLast()
            } else {
                minStack[n - 1][1] = c - 1
            }
        }
        stack.removeLast()
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        minStack.last![0]
    }
}
