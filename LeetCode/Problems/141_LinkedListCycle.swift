//
//  141_LinkedListCycle.swift
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

class Xoo141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        false
    }
}

// MARK: - 1. Hash Table

class Xoo141_1 {
    func hasCycle(_ head: ListNode?) -> Bool {
        false
    }
}

// MARK: - 2. Floyd's Cycle Finding Algorithm

class Xoo141_2 {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next
        while let s = slow, let f = fast {
            guard s !== f else { return true }
            slow = s.next
            fast = f.next?.next
        }
        return false
    }
}
