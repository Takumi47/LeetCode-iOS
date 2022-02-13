//
//  1008_ConstructBinarySearchTreeFromPreorderTraversal.swift
//  LeetCode
//
//  Created by xander on 2021/10/13.
//

import Foundation

/*
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

class Xoo1008 {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }
        
        var left: [Int] = []
        var right: [Int] = []
        for (i, val) in preorder.enumerated() where i != 0 {
            if val <= preorder[0] {
                left.append(val)
            } else {
                right.append(val)
            }
        }
        
        let leftNode = bstFromPreorder(left)
        let rightNode = bstFromPreorder(right)
        return TreeNode(preorder[0], leftNode, rightNode)
    }
}

// MARK: - 1. Construct binary tree from preorder and inorder traversal

class Xoo1008_1 {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        var preIndex = 0
        let inorder = preorder.sorted()
        var indexMap: [Int: Int] = [:]
        for (i, val) in inorder.enumerated() {
            indexMap[val] = i
        }
        return helper(preorder, &preIndex, 0, inorder.count, indexMap)
    }
    
    private func helper(_ preorder: [Int], _ i: inout Int, _ l: Int, _ r: Int, _ indexMap: [Int: Int]) -> TreeNode? {
        if l == r { return nil }
        
        let val = preorder[i]
        let root = TreeNode(val)
        if let index = indexMap[val] {
            i += 1
            root.left = helper(preorder, &i, l, index, indexMap)
            root.right = helper(preorder, &i, index + 1, r, indexMap)
        }
        return root
    }
}

// MARK: - 2. Recursion

class Xoo1008_2 {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        var preIndex = 0
        return helper(preorder, &preIndex, Int.min, Int.max)
    }
    
    private func helper(_ preorder: [Int], _ i: inout Int, _ lower: Int, _ upper: Int) -> TreeNode? {
        if i == preorder.count { return nil }
        
        let val = preorder[i]
        guard lower <= val && val <= upper else { return nil }
        
        let root = TreeNode(val)
        i += 1
        root.left = helper(preorder, &i, lower, val)
        root.right = helper(preorder, &i, val, upper)
        return root
    }
}

// MARK: - 3. Iteration

class Xoo1008_3 {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        let n = preorder.count
        let root = TreeNode(preorder[0])
        let stack = Stack<TreeNode>()
        stack.push(root)
        
        for i in 1..<n {
            let child = TreeNode(preorder[i])
            
            var node = stack.peek
            while let next = stack.peek, next.val < child.val {
                node = stack.pop()
            }
            
            if let node = node {
                if node.val >= child.val { node.left = child }
                if node.val < child.val { node.right = child }
            }
            stack.push(child)
        }
        
        return root
    }
}
