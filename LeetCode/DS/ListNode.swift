//
//  ListNode.swift
//  LeetCode
//
//  Created by xander on 2021/6/23.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

// MARK: - Description

extension ListNode: CustomStringConvertible {
    var description: String {
        guard let next = next else { return "\(val)" }
        return "\(val) -> \(next)"
    }
}

// MARK: - 23. Merge k Sorted Lists

extension ListNode: Equatable {
    static func ==(lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val
    }
}
