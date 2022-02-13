//
//  543_DiameterOfBinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/10/11.
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

class Xoo543 {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 1. Depth-first Search

class Xoo543_1 {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var diameter = 0
        _ = longestPath(root, &diameter)
        return diameter
    }
    
    private func longestPath(_ node: TreeNode?, _ diameter: inout Int) -> Int {
        guard let node = node else { return 0 }
        let left = longestPath(node.left, &diameter)
        let right = longestPath(node.right, &diameter)
        diameter = max(diameter, left + right)
        return max(left, right) + 1
    }
}
