//
//  235_LowestCommonAncestorOfABinarySearchTree.swift
//  LeetCode
//
//  Created by xander on 2021/7/19.
//

import Foundation

class Xoo235 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        if root === p || root === q { return root }
        
        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)
        
        if let _ = left, let _ = right { return root }
        return (left == nil) ? right : left
    }
}

// MARK: - 1. Recursive Approach

class Xoo235_1 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let rval = root?.val else { return nil }
        guard let pval = p?.val, let qval = q?.val else { return root }
        
        if pval > rval && qval > rval {
            return lowestCommonAncestor(root?.right, p, q)
        } else if pval < rval && qval < rval {
            return lowestCommonAncestor(root?.left, p, q)
        } else {
            return root
        }
    }
}

// MARK: - 2. Iterative Approach

class Xoo235_2 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var node = root
        while let val = node?.val {
            guard let pval = p?.val, let qval = q?.val else { return node }
            if pval > val && qval > val {
                node = node?.right
            } else if pval < val && qval < val {
                node = node?.left
            } else {
                return node
            }
        }
        return nil
    }
}
