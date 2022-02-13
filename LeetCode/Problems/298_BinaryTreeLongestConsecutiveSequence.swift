//
//  298_BinaryTreeLongestConsecutiveSequence.swift
//  LeetCode
//
//  Created by xander on 2021/7/29.
//

import Foundation

class Xoo298 {
    func longestConsecutive(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 1. Top Down DFS

class Xoo298_1 {
    func longestConsecutive(_ root: TreeNode?) -> Int {
        var maxLength = 0
        dfs(root, nil, 0, &maxLength)
        return maxLength
    }
    
    private func dfs(_ node: TreeNode?, _ parent: TreeNode?, _ length: Int, _ maxLength: inout Int) {
        guard let node = node else { return }
        let length = (parent != nil && node.val == parent!.val + 1) ? length + 1 : 1
        maxLength = max(maxLength, length)
        dfs(node.left, node, length, &maxLength)
        dfs(node.right, node, length, &maxLength)
    }
}

// MARK: - 2. Bottom Up DFS

class Xoo298_2 {
    func longestConsecutive(_ root: TreeNode?) -> Int {
        0
    }
}
