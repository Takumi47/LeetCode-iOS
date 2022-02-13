//
//  108_ConvertSortedArrayToBinarySearchTree.swift
//  LeetCode
//
//  Created by xander on 2021/7/27.
//

import Foundation

class Xoo108 {
    
    /// Height balanced: Node(root.left) - Node(root.right) <= 1
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return build(nums, 0, nums.count - 1)
    }
    
    private func build(_ nums: [Int], _ lo: Int, _ hi: Int) -> TreeNode? {
        guard lo <= hi else { return nil }
        let mid = (lo + hi) / 2
        let root = TreeNode(nums[mid])
        root.left = build(nums, lo, mid - 1)
        root.right = build(nums, mid + 1, hi)
        return root
    }
}

// MARK: - 1. Preorder Traversal: Always Choose Left Middle Node as a Root

class Xoo108_1 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        nil
    }
}

// MARK: - 2. Preorder Traversal: Always Choose Right Middle Node as a Root

class Xoo108_2 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        nil
    }
}

// MARK: - 3. Preorder Traversal: Choose Random Middle Node as a Root

class Xoo108_3 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        nil
    }
}
