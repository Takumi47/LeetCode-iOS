//
//  95_UniqueBinarySearchTreesII.swift
//  LeetCode
//
//  Created by xander on 2021/9/3.
//

import Foundation

class Xoo95 {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        guard n > 0 else { return [] }
        return generateTrees(1, n)
    }
    
    private func generateTrees(_ l: Int, _ r: Int) -> [TreeNode?] {
        var ans: [TreeNode?] = []
        guard l <= r else {
            ans.append(nil)
            return ans
        }
        
        for i in l...r {
            for left in generateTrees(l, i - 1) {
                for right in generateTrees(i + 1, r) {
                    let root = TreeNode(i)
                    root.left = left
                    root.right = right
                    ans.append(root)
                }
            }
        }
        
        return ans
    }
}

// MARK: - 1. Recursion

class Xoo95_1 {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        []
    }
}
