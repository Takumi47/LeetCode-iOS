//
//  337_HouseRobberIII.swift
//  LeetCode
//
//  Created by xander on 2021/12/5.
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

class Xoo337 {
    func rob(_ root: TreeNode?) -> Int {
        var memo0: [TreeNode: Int] = [:]
        var memo1: [TreeNode: Int] = [:]
        return dfs(root, 1, &memo0, &memo1)
    }
    
    /// - Parameters:
    ///     - flag: 0 - cannot choose, 1 - can choose
    private func dfs(_ node: TreeNode?, _ flag: Int, _ memo0: inout [TreeNode: Int], _ memo1: inout [TreeNode: Int]) -> Int {
        guard let node = node else { return 0 }
        var res = 0
        if flag == 0 {
            if let val = memo0[node] { return val }
            
            res = dfs(node.left, 1, &memo0, &memo1) + dfs(node.right, 1, &memo0, &memo1)
            memo0[node] = res
        } else {
            if let val = memo1[node] { return val }
            
            let opt1 = node.val + dfs(node.left, 0, &memo0, &memo1) + dfs(node.right, 0, &memo0, &memo1)
            let opt2 = dfs(node.left, 1, &memo0, &memo1) + dfs(node.right, 1, &memo0, &memo1)
            res = max(opt1, opt2)
            memo1[node] = res
        }
        return res
    }
}

// MARK: - 1. Recursion

class Xoo337_1 {
    func rob(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 2. Recursion with Memoization

class Xoo337_2 {
    func rob(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 3. Dynamic Programming

class Xoo337_3 {
    func rob(_ root: TreeNode?) -> Int {
        0
    }
}
