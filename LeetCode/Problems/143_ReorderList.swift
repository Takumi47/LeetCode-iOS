//
//  143_ReorderList.swift
//  LeetCode
//
//  Created by xander on 2021/12/23.
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

class Xoo143 {
    func reorderList(_ head: ListNode?) {
    }
}

// MARK: - 1. Reverse the Second Part of the List and Merge Two Sorted Lists

class Xoo143_1 {
    func reorderList(_ head: ListNode?) {
        
        // 1. Find the middle of linked list (#876)
        var slow = head
        var fast = head
        while let n1 = fast, let n2 = n1.next {
            slow = slow?.next
            fast = n2.next
        }
        
        // 2. Reverse the second part of the list (#206)
        var prev: ListNode? = nil
        var curr = slow
        while let _ = curr {
            let temp = curr?.next
            curr?.next = prev
            prev = curr
            curr = temp
        }
        
        // 3. Merge two sorted linked lists (#21)
        var first = head
        var second = prev
        while let _ = second?.next {
            var temp = first?.next
            first?.next = second
            first = temp
            
            temp = second?.next
            second?.next = first
            second = temp
        }
    }
}
