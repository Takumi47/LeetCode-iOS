//
//  382_LinkedListRandomNode.swift
//  LeetCode
//
//  Created by xander on 2022/1/7.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Xoo382 {

    private var head: ListNode?
    
    init(_ head: ListNode?) {
        self.head = head
    }
    
    func getRandom() -> Int {
        var scope = 1
        var chosenValue = 0
        var curr = head
        while let node = curr {
            if Int.random(in: 0..<scope) == 0 {
                chosenValue = node.val
            }
            scope += 1
            curr = node.next
        }
        return chosenValue
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(head)
 * let ret_1: Int = obj.getRandom()
 */

// MARK: - 1. Fixed-Range Sampling

class Xoo382_1 {

    private var storage: [Int] = []
    
    init(_ head: ListNode?) {
        var curr = head
        while let node = curr {
            storage.append(node.val)
            curr = node.next
        }
    }
    
    func getRandom() -> Int {
        let index = Int.random(in: 0..<storage.count)
        return storage[index]
    }
}

// MARK: - 2. Reservoir Sampling
/*
 1. [a]           ->  prob. x = 1a
 2. [a, b]        ->  prob. x = 1/2x,  1/2b  =>  1/2a,  1/2b
 3. [a, b, c]     ->  prob. x = 2/3x,  1/3c  =>  1/3a,  1/3b,  1/3c
 4. [a, b, c, d]  ->  prob. x = 3/4x,  1/4d  =>  1/4a,  1/4b,  1/4c, 1/4d
 5. ...
 6. [A1, A2, A3, ..., Ak]  ->  prob. x = (k - 1)/k * A1,  1/k * Ak  =>  1/k * A1,  1/k * A2,  ..., 1/k * Ak
 */

class Xoo382_2 {

    private var head: ListNode?
    
    init(_ head: ListNode?) {
        self.head = head
    }
    
    func getRandom() -> Int {
        var scope = 1.0
        var chosenValue = 0
        var curr = head
        while let node = curr {
            if Double.random(in: 0...1) < 1.0 / scope {
                chosenValue = node.val
            }
            scope += 1
            curr = node.next
        }
        return chosenValue
    }
}
