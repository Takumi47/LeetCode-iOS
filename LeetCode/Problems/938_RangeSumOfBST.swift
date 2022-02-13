//
//  938_RangeSumOfBST.swift
//  LeetCode
//
//  Created by xander on 2021/12/14.
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

class Xoo938 {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        return dfs(root, low...high, 0)
    }
    
    private func dfs(_ node: TreeNode?, _ range: ClosedRange<Int>, _ currSum: Int) -> Int {
        guard let node = node else { return currSum }
        var sum = currSum
        
        if range.contains(node.val) { sum += node.val }
        
        if node.val < range.lowerBound {
            sum = dfs(node.right, range, sum)
        } else if range.upperBound < node.val {
            sum = dfs(node.left, range, sum)
        } else {
            sum = dfs(node.left, range, sum)
            sum = dfs(node.right, range, sum)
        }

        return sum
    }
}

// MARK: - 1. Depth First Search (Recursive)

class Xoo938_1 {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        var sum = 0
        dfs(root, low, high, &sum)
        return sum
    }
    
    private func dfs(_ node: TreeNode?, _ low: Int, _ high: Int, _ sum: inout Int) {
        guard let node = node else { return }
        if low <= node.val && node.val <= high { sum += node.val }
        if low < node.val { dfs(node.left, low, high, &sum) }
        if node.val < high { dfs(node.right, low, high, &sum) }
    }
}

// MARK: - 2. Depth First Search (Iterative)

class Xoo938_2 {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }
        var sum = 0
        let stack = Stack<TreeNode>()
        stack.push(root)
        while let node = stack.pop() {
            if low <= node.val && node.val <= high { sum += node.val }
            if low < node.val, let left = node.left { stack.push(left) }
            if node.val < high, let right = node.right { stack.push(right) }
        }
        return sum
    }
}
