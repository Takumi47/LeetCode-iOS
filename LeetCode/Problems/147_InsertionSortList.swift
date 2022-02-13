//
//  147_InsertionSortList.swift
//  LeetCode
//
//  Created by xander on 2021/12/15.
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

class Xoo147 {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 1. Insertion Sort

class Xoo147_1 {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        let dummy: ListNode? = .init(0)
        var current = head
        
        while let curr = current {
            var prev = dummy
            while let node = prev?.next, node.val < curr.val {
                prev = node
            }
            
            let next = curr.next
            curr.next = prev?.next
            prev?.next = curr
            current = next
        }
        
        return dummy?.next
    }
}
