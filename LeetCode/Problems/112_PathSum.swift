//
//  112_PathSum.swift
//  LeetCode
//
//  Created by xander on 2021/8/4.
//

import Foundation

class Xoo112 {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false }
        if root.left == nil && root.right == nil { return root.val == targetSum }
        return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
    }
}

// MARK: - 1. Recursion

class Xoo112_1 {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        false
    }
}

// MARK: - 2. Iterations

class Xoo112_2 {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        false
    }
}
