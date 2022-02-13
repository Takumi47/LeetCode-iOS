//
//  206_ReverseLinkedList.swift
//  LeetCode
//
//  Created by xander on 2021/9/7.
//

import Foundation

class Xoo206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var newHead = head
        while let next = head?.next {
            head?.next = next.next
            next.next = newHead
            newHead = next
        }
        return newHead
    }
}

// MARK: - 1. Iterative

class Xoo206_1 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        return prev
    }
}

// MARK: - 2. Recursive

class Xoo206_2 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let curr = head, let next = curr.next else { return head }
        let newHead = reverseList(next)
        
        next.next = curr // key point
        curr.next = nil
        
        return newHead
    }
}
