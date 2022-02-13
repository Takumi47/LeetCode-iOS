//
//  113_PathSumII.swift
//  LeetCode
//
//  Created by xander on 2021/8/4.
//

import Foundation

class Xoo113 {
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var ans: [[Int]] = []
        var curr: [Int] = []
        pathSum(root, targetSum, &curr, &ans)
        return ans
    }
    
    private func pathSum(_ root: TreeNode?, _ targetSum: Int, _ curr: inout [Int], _ ans: inout [[Int]]) {
        guard let root = root else { return }
        if root.left == nil && root.right == nil {
            if root.val == targetSum {
                curr.append(root.val)
                ans.append(curr)
                curr.removeLast()
            }
            return
        }
        curr.append(root.val)
        pathSum(root.left, targetSum - root.val, &curr, &ans)
        pathSum(root.right, targetSum - root.val, &curr, &ans)
        curr.removeLast()
    }
}

// MARK: - Depth First Traversal | Recursion

class Xoo113_1 {
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        []
    }
}
