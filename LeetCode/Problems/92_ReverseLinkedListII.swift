//
//  92_ReverseLinkedListII.swift
//  LeetCode
//
//  Created by xander on 2021/6/23.
//

import Foundation

class Xoo92 {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        guard left > 1 else { return reverseN(head, right) }
        head?.next = reverseBetween(head?.next, left - 1, right - 1)
        return head
    }
    
    private func reverseN(_ head: ListNode?, _ right: Int) -> ListNode? {
        guard right > 1 else { return head }

        let last = reverseN(head?.next, right - 1)
        let successor = head?.next?.next
        head?.next?.next = head
        head?.next = successor
        
        return last
    }
}

// MARK: - 1. Recursion

class Xoo92_1 {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        var left = head
        (1..<m).forEach { _ in left = left?.next }
        recurseAndReverse(&left, left?.next, n - m + 1)
        return head
    }
    
    var isStop = false
    private func recurseAndReverse(_ left: inout ListNode?, _ right: ListNode?, _ n: Int) {
        if n == 1 { return }
        recurseAndReverse(&left, right?.next, n - 1)
        if left === right || right?.next === left {
            isStop = true
        }
        
        guard !isStop, let l = left, let r = right else { return }
        let tmp = l.val
        l.val = r.val
        r.val = tmp
        left = l.next
    }
}

// MARK: - 2. Iterative Link Reversal

class Xoo92_2 {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        var i = 1
        while i < m {
            prev = curr
            curr = curr?.next
            i += 1
        }
        let conn = prev
        let tail = curr
        while i <= n {
            let tmp = curr?.next
            curr?.next = prev
            prev = curr
            curr = tmp
            i += 1
        }
        conn?.next = prev
        tail?.next = curr
        return (conn == nil) ? prev : head
    }
}
