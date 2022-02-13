//
//  142_LinkedListCycleII.swift
//  LeetCode
//
//  Created by xander on 2022/1/19.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Xoo142 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 1. Hash Table

class Xoo142_1 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 2. Floyd's Tortoise and Hare

/*
 Phase 1
    hare    : x = m + (k1 * n) + p
    tortoise: y = m + (k2 * n) + p
    => x = 2 * y
    => (k1 - 2 * k2) * n = m + p
 */

class Xoo142_2 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var tortoise = head
        var hare = head
        var intersection: ListNode? = nil
        while let t = tortoise, let h = hare {
            tortoise = t.next
            hare = h.next?.next
            if tortoise === hare {
                intersection = tortoise
                break
            }
        }

        var ptr1 = head
        var ptr2 = intersection
        while let p1 = ptr1, let p2 = ptr2 {
            if p1 === p2 { break }
            ptr1 = p1.next
            ptr2 = p2.next
        }
        return ptr2
    }
}
