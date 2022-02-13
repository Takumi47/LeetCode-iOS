//
//  105_ConstructBinaryTreeFromPreorderAndInorderTraversal.swift
//  LeetCode
//
//  Created by xander on 2021/6/8.
//

import Foundation

// MARK: - Recursion

class Xoo105 {
    var preIndex = 0
    var preorder: [Int] = []
    var lookup: [Int: Int] = [:]
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        self.preorder = preorder
        inorder.enumerated().forEach { i, val in lookup[val] = i }
        return build(0, preorder.count - 1)
    }
    
    private func build(_ leftIndex: Int, _ rightIndex: Int) -> TreeNode? {
        guard leftIndex <= rightIndex else { return nil }
        let root = TreeNode(preorder[preIndex])
        preIndex += 1
        
        root.left = build(leftIndex, lookup[root.val]! - 1)
        root.right = build(lookup[root.val]! + 1, rightIndex)
        return root
    }
}
