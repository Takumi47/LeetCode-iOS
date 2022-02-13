//
//  814_BinaryTreePruning.swift
//  LeetCode
//
//  Created by xander on 2021/7/23.
//

import Foundation

class Xoo814 {
    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        root.left = pruneTree(root.left)
        root.right = pruneTree(root.right)
        
        return root.val == 1 || root.left != nil || root.right != nil ? root : nil
    }
}

// MARK: - 1. Recursion

class Xoo814_1 {
    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        nil
    }
}
