//
//  328_OddEvenLinkedList.swift
//  LeetCode
//
//  Created by xander on 2021/12/3.
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

class Xoo328 {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var odd = head
        var even = head?.next
        let evenHead = even
        while let n1 = even, let n2 = n1.next {
            odd?.next = n2
            even?.next = n2.next
            odd = n2
            even = n2.next
        }
        odd?.next = evenHead
        return head
    }
}
