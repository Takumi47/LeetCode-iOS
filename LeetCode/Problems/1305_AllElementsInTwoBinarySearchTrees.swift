//
//  1305_AllElementsInTwoBinarySearchTrees.swift
//  LeetCode
//
//  Created by xander on 2022/1/26.
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

class Xoo1305 {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var arr1: [Int] = []
        var arr2: [Int] = []
        root1?.traverseInOrder { arr1.append($0) }
        root2?.traverseInOrder { arr2.append($0) }
        
        var ans: [Int] = []
        var i = 0
        var j = 0
        while i < arr1.count && j < arr2.count {
            if arr1[i] < arr2[j] {
                ans.append(arr1[i])
                i += 1
            } else if arr1[i] > arr2[j] {
                ans.append(arr2[j])
                j += 1
            } else {
                ans.append(arr1[i])
                ans.append(arr2[j])
                i += 1
                j += 1
            }
        }
        if i < arr1.count { ans.append(contentsOf: arr1[i...]) }
        if j < arr2.count { ans.append(contentsOf: arr2[j...]) }
        return ans
    }
}

class Xoo1305_A {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var s1 = Stack<TreeNode>()
        var s2 = Stack<TreeNode>()
        smallest(root1, &s1)
        smallest(root2, &s2)
        
        var ans: [Int] = []
        while !s1.isEmpty || !s2.isEmpty {
            var s = s1.isEmpty ? s2 : (s2.isEmpty ? s1 : (s1.peek!.val < s2.peek!.val ? s1 : s2))
            if let n = s.pop() {
                ans.append(n.val)
                smallest(n.right, &s)
            }
        }
        return ans
    }
    
    private func smallest(_ node: TreeNode?, _ stack: inout Stack<TreeNode>) {
        guard let node = node else { return }
        stack.push(node)
        smallest(node.left, &stack)
    }
}

// MARK: - 1. Recursive Inorder Traversal + Sort, Linearithmic Time

class Xoo1305_1 {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        []
    }
}

// MARK: - 2. Iterative Inorder Traversal, One Pass, Linear Time

class Xoo1305_2 {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        []
    }
}
