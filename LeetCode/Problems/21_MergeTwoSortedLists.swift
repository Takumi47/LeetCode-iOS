//
//  21_MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by xander on 2022/2/5.
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

class Xoo21 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 1. Recursion

class Xoo21_1 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        nil
    }
}

// MARK: - 2. Iteratioin

class Xoo21_2 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let head: ListNode? = .init(0)
        var node = head
        var l1 = list1
        var l2 = list2
        while let n1 = l1, let n2 = l2 {
            if n1.val <= n2.val {
                node?.next = n1
                l1 = l1?.next
            } else {
                node?.next = n2
                l2 = l2?.next
            }
            node = node?.next
        }
        node?.next = l1 == nil ? l2 : l1
        return head?.next
    }
}
