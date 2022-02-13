//
//  563_BinaryTreeTilt.swift
//  LeetCode
//
//  Created by xander on 2021/12/8.
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

class Xoo563 {
    func findTilt(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 1. Post-Order DFS Traversal

class Xoo563_1 {
    func findTilt(_ root: TreeNode?) -> Int {
        var totalTilt = 0
        _ = valueSum(root, &totalTilt)
        return totalTilt
    }
    
    private func valueSum(_ node: TreeNode?, _ totalTilt: inout Int) -> Int {
        guard let node = node else { return 0 }
        let left = valueSum(node.left, &totalTilt)
        let right = valueSum(node.right, &totalTilt)
        let tilt = abs(left - right)
        totalTilt += tilt
        return node.val + left + right
    }
}
