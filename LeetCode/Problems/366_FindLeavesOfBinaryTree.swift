//
//  366_FindLeavesOfBinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/7/1.
//

import Foundation

class Xoo366 {
    func findLeaves(_ root: TreeNode?) -> [[Int]] {
        []
    }
}

// MARK: - 1. DFS with sorting

class Xoo366_1 {
    func findLeaves(_ root: TreeNode?) -> [[Int]] {
        var memo: [Int: [Int]] = [:]
        _ = getHeight(root, &memo)
        
        var result: [[Int]] = []
        for k in memo.keys.sorted() {
            guard let list = memo[k] else { continue }
            result.append(list)
        }
        return result
    }
    
    private func getHeight(_ node: TreeNode?, _ memo: inout [Int: [Int]]) -> Int {
        guard let node = node else { return -1 }
        let leftH = getHeight(node.left, &memo)
        let rightH = getHeight(node.right, &memo)
        
        let currentH = 1 + max(leftH, rightH)
        if memo[currentH] == nil { memo[currentH] = [] }
        memo[currentH]!.append(node.val)
        
        return currentH
    }
}

// MARK: - 2. DFS without sorting

class Xoo366_2 {
    func findLeaves(_ root: TreeNode?) -> [[Int]] {
        []
    }
}
