//
//  1290_ConvertBinaryNumberInALinkedListToInteger.swift
//  LeetCode
//
//  Created by xander on 2021/12/7.
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

class Xoo1290 {
    func getDecimalValue(_ head: ListNode?) -> Int {
        0
    }
}

// MARK: - 1. Binary Representation

class Xoo1290_1 {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var num = 0
        var curr = head
        while let node = curr {
            num = num * 2 + node.val
            curr = node.next
        }
        return num
    }
}

// MARK: - 2. Bit Manipulation

class Xoo1290_2 {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var num = 0
        var curr = head
        while let node = curr {
            num = (num << 1) | node.val
            curr = node.next
        }
        return num
    }
}
