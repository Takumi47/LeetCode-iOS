//
//  1120_MaximumAverageSubtree.swift
//  LeetCode
//
//  Created by xander on 2021/9/2.
//

import Foundation

class Xoo1120 {
    func maximumAverageSubtree(_ root: TreeNode?) -> Double {
        var maxAvg: Double = 0
        _ = dfs(root, &maxAvg)
        return maxAvg
    }
    
    func dfs(_ node: TreeNode?, _ maxAvg: inout Double) -> (Int, Int) {
        guard let node = node else { return (0, 0) }
        
        let (countL, sumL) = dfs(node.left, &maxAvg)
        let (countR, sumR) = dfs(node.right, &maxAvg)
        
        let count = 1 + countL + countR
        let sum = node.val + sumL + sumR
        maxAvg = max(maxAvg, Double(sum) / Double(count))
        
        return (count, sum)
    }
}

// MARK: - 1. Postorder Traversal

class Xoo1120_1 {
    func maximumAverageSubtree(_ root: TreeNode?) -> Double {
        0
    }
}
