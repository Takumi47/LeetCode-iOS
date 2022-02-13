//
//  701_InsertIntoABinarySearchTree.swift
//  LeetCode
//
//  Created by xander on 2022/1/12.
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

class Xoo701 {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        nil
    }
}

// MARK: - 1. Recursion

class Xoo701_1 {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }
        if val < root.val {
            root.left = insertIntoBST(root.left, val)
        } else {
            root.right = insertIntoBST(root.right, val)
        }
        return root
    }
}

// MARK: - 2. Iteration

class Xoo701_2 {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        nil
    }
}
