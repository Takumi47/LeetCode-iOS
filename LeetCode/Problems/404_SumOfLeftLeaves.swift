//
//  404_SumOfLeftLeaves.swift
//  LeetCode
//
//  Created by xander on 2021/11/4.
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

class Xoo404 {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var sum = 0
        
        if let left = root.left, left.left == nil, left.right == nil {
            sum += left.val
        }

        return sum + sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right)
    }
}

// MARK: - 1. Iterative Tree Traversal (Pre-order)

class Xoo404_1 {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 2. Recursive Tree Traversal (Pre-order)

class Xoo404_2 {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 3. Morris Tree Traversal (Pre-order)

class Xoo404_3 {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        0
    }
}
