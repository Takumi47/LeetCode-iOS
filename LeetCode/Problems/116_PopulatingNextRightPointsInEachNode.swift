//
//  116_PopulatingNextRightPointsInEachNode.swift
//  LeetCode
//
//  Created by xander on 2021/12/30.
//

import Foundation

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *     public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Xoo116 {
    func connect(_ root: Node2?) -> Node2? {
        guard let root = root else { return nil }
        guard let left = root.left, let right = root.right else { return root }
        
        left.next = right
        if let n = root.next {
            right.next = n.left
        }
        
        _ = connect(left)
        _ = connect(right)

        return root
    }
}

// MARK: - 1. Level Order Traversal

class Xoo116_1 {
    func connect(_ root: Node2?) -> Node2? {
        nil
    }
}

// MARK: - 2. Using previously established next pointers

class Xoo116_2 {
    func connect(_ root: Node2?) -> Node2? {
        nil
    }
}
