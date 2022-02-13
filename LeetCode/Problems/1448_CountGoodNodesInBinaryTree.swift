//
//  1448_CountGoodNodesInBinaryTree.swift
//  LeetCode
//
//  Created by xander on 2021/8/17.
//

import Foundation

class Xoo1448 {
    func goodNodes(_ root: TreeNode?) -> Int {
        var ans = 0
        dfs(root, Int.min, &ans)
        return ans
    }
    
    private func dfs(_ node: TreeNode?, _ currMax: Int, _ ans: inout Int) {
        guard let node = node else { return }
        
        if currMax <= node.val { ans += 1 }
        let val = max(node.val, currMax)
        
        dfs(node.left, val, &ans)
        dfs(node.right, val, &ans)
    }
}

// MARK: - 1. DFS, Recursion

class Xoo1448_1 {
    func goodNodes(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 2. DFS, Iterative

class Xoo1448_2 {
    func goodNodes(_ root: TreeNode?) -> Int {
        0
    }
}

// MARK: - 3. BFS

class Xoo1448_3 {
    func goodNodes(_ root: TreeNode?) -> Int {
        0
    }
}
