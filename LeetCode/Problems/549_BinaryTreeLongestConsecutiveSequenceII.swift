//
//  549_BinaryTreeLongestConsecutiveSequenceII.swift
//  LeetCode
//
//  Created by xander on 2021/7/29.
//

import Foundation

class Xoo549 {
    var maxLength = 0
    
    func longestConsecutive(_ root: TreeNode?) -> Int {
        _ = postOrder(root)
        return maxLength
    }
    
    private func postOrder(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [0, 0] }
        
        // 0: increasing length from parent to child
        // 1: decreasing length from parent to child
        var left = postOrder(root.left)
        var right = postOrder(root.right)
        
        if let leftNode = root.left, root.val + 1 == leftNode.val {
            left[0] += 1
        } else {
            left[0] = 1
        }
        
        if let leftNode = root.left, root.val - 1 == leftNode.val {
            left[1] += 1
        } else {
            left[1] = 1
        }
        
        if let rightNode = root.right, root.val + 1 == rightNode.val {
            right[0] += 1
        } else {
            right[0] = 1
        }
        
        if let rightNode = root.right, root.val - 1 == rightNode.val {
            right[1] += 1
        } else {
            right[1] = 1
        }
        
        let increasing = left[1] + right[0] - 1
        let decreasing = left[0] + right[1] - 1
        maxLength = max(maxLength, max(increasing, decreasing))
        return [max(left[0], right[0]), max(left[1], right[1])]
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo549_1 {
    func longestConsecutive(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 2. Single Traversal

class Xoo549_2 {
    func longestConsecutive(_ root: TreeNode?) -> Int {
        0
    }
}
