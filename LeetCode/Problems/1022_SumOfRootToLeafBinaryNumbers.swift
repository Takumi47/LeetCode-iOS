//
//  1022_SumOfRootToLeafBinaryNumbers.swift
//  LeetCode
//
//  Created by xander on 2022/1/11.
//

import Foundation

/**
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

class Xoo1022 {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 1. Iterative Preorder Traversal (the best time)

class Xoo1022_1 {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let stack = Stack<(TreeNode, Int)>()
        stack.push((root, 0))
        
        var sum = 0
        while let (node, prev) = stack.pop() {
            let curr = (prev << 1) | node.val
            if node.left == nil && node.right == nil {
                sum += curr
            } else {
                if let left = node.left { stack.push((left, curr)) }
                if let right = node.right { stack.push((right, curr)) }
            }
        }
        return sum
    }
}

// MARK: - 2. Recursive Preorder Traversal (the simplest one to write)

class Xoo1022_2 {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var sum = 0
        preorder(root, 0, &sum)
        return sum
    }
    
    private func preorder(_ node: TreeNode?, _ prev: Int, _ sum: inout Int) {
        guard let node = node else { return }
        let curr = (prev << 1) | node.val
        if node.left == nil && node.right == nil { sum += curr }
        preorder(node.left, curr, &sum)
        preorder(node.right, curr, &sum)
    }
}

// MARK: - 3. Morris Preorder Traversal (constant space)

/*
 predecessor = one step left and then right till you can (左子樹中最右的)
 successor   = one step right and then left till you can (右子樹中最左的)
 */

class Xoo1022_3 {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var sum = 0
        var currNum = 0
        var currNode = root
        while let node = currNode {
            if node.left != nil {
                // Find Predecessor
                var predecessor = node.left
                var steps = 1
                while predecessor?.right != nil && predecessor?.right !== node {
                    predecessor = predecessor?.right
                    steps += 1
                }
                
                if predecessor?.right == nil {
                    // Set the link
                    predecessor?.right = node
                    currNum = (currNum << 1) | node.val
                    currNode = node.left
                } else {
                    // At leaf node
                    if predecessor?.left == nil {
                        sum += currNum
                    }
                    
                    // Backtrack
                    for _ in 0..<steps {
                        currNum >>= 1
                    }
                    
                    // Break the link
                    predecessor?.right = nil
                    currNode = node.right
                }
                
            } else {
                currNum = (currNum << 1) | node.val
                
                // At leaf node
                if node.right == nil {
                    sum += currNum
                }
                
                currNode = node.right
            }
        }
        return sum
    }
}
