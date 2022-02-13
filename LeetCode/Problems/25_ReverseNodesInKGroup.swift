//
//  25_ReverseNodesInKGroup.swift
//  LeetCode
//
//  Created by xander on 2021/7/18.
//

import Foundation

class Xoo25 {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var head = head
        var curr = head
        var count = 0
        while curr != nil && count != k {
            curr = curr?.next
            count += 1
        }
        
        if count == k {
            curr = reverseKGroup(curr, k)
            while count > 0 {
                let temp = head?.next
                head?.next = curr
                curr = head
                head = temp
                count -= 1
            }
            head = curr
        }
        
        return head
    }
}

// MARK: - 1. Recursion

class Xoo25_1 {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        nil
    }
}

// MARK: - 2. Iterative O(1) space

class Xoo25_2 {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        nil
    }
}
