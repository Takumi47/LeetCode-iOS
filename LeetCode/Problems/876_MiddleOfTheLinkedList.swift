//
//  876_MiddleOfTheLinkedList.swift
//  LeetCode
//
//  Created by xander on 2021/12/29.
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

class Xoo876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 1. Output to Array

class Xoo876_1 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var nodes: [ListNode] = []
        var count = 0
        var curr = head
        while let node = curr {
            count += 1
            nodes.append(node)
            curr = node.next
        }
        return nodes[count / 2]
    }
}

// MARK: - 2. Fast and Slow Pointer

class Xoo876_2 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while let _ = fast, let _ = fast?.next {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
