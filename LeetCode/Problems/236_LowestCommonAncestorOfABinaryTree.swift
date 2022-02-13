//
//  236_LowestCommonAncestorOfABinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/6/30.
//

import Foundation

class Xoo236 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        if root === p || root === q { return root }
        
        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)
        
        if let _ = left, let _ = right { return root }
        return (left == nil) ? right : left
    }
}
