//
//  993_CousinsInBinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/10/18.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Xoo993 {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        false
    }
}

// MARK: - 1. Depth First Search with Branch Pruning

class Xoo993_1 {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        false
    }
}

// MARK: - 2. Breadth First Search with Early Stopping

class Xoo993_2 {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        var queue = Queue<TreeNode?>()
        queue.enqueue(root)
        
        while !queue.isEmpty {
            var siblings = false
            var cousins = false
            
            for _ in 0..<queue.count {
                guard let node = queue.dequeue() else { continue }
                if node == nil {
                    siblings = false
                } else {
                    if node?.val == x || node?.val == y {
                        if !cousins {
                            siblings = true
                            cousins = true
                        } else {
                            return !siblings
                        }
                    }
                    if let left = node?.left { queue.enqueue(left) }
                    if let right = node?.right { queue.enqueue(right) }
                    queue.enqueue(nil)
                }
            }
            
            if cousins { return false }
        }
        return false
    }
}
