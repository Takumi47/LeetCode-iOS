//
//  129_SumRootToLeafNumbers.swift
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

class Xoo129 {
    func sumNumbers(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 1. Iterative Preorder Traversal

class Xoo129_1 {
    func sumNumbers(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 2. Recursive Preorder Traversal

class Xoo129_2 {
    func sumNumbers(_ root: TreeNode?) -> Int {
        var sum = 0
        preorder(root, 0, &sum)
        return sum
    }
    
    private func preorder(_ node: TreeNode?, _ prevSum: Int, _ sum: inout Int) {
        guard let node = node else { return }
        let currSum = prevSum * 10 + node.val
        
        if node.left == nil && node.right == nil {
            sum += currSum
        } else {
            preorder(node.left, currSum, &sum)
            preorder(node.right, currSum, &sum)
        }
    }
}

// MARK: - 3. Morris Preorder Traversal

class Xoo129_3 {
    func sumNumbers(_ root: TreeNode?) -> Int {
        0
    }
}
