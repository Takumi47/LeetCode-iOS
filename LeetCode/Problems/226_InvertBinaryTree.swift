//
//  226_InvertBinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/10/26.
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

class Xoo226 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        nil
    }
}

// MARK: - 1. Recursive

class Xoo226_1 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        let left = invertTree(root.left)
        let right = invertTree(root.right)
        root.left = right
        root.right = left
        return root
    }
}

// MARK: - 2. Iterative

class Xoo226_2 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        nil
    }
}
