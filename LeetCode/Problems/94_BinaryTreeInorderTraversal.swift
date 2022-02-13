//
//  94_BinaryTreeInorderTraversal.swift
//  LeetCode
//
//  Created by xander on 2022/1/17.
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

class Xoo94 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        root?.traverseInOrder { res.append($0) }
        return res
    }
}

// MARK: - 1. Recursive Approach

class Xoo94_1 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        []
    }
}

// MARK: - 2. Iterating method using Stack

class Xoo94_2 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        let stack = Stack<TreeNode>()
        var curr = root
        while curr != nil || !stack.isEmpty {
            while let node = curr {
                stack.push(node)
                curr = curr?.left
            }
            if let node = stack.pop() {
                res.append(node.val)
                curr = node.right
            }
        }
        return res
    }
}

// MARK: - 3. Morris Inorder Traversal

class Xoo94_3 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        var curr = root
        while let node = curr {
            if node.left != nil {
                var predecessor = node.left
                while predecessor?.right != nil {
                    predecessor = predecessor?.right
                }
                predecessor?.right = node
                curr = node.left
                node.left = nil
            } else {
                res.append(node.val)
                curr = node.right
            }
        }
        return res
    }
}
