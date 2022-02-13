//
//  653_TwoSumIV_InputIsABST.swift
//  LeetCode
//
//  Created by xander on 2021/8/23.
//

import Foundation

class Xoo653 {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var map: [Int: Int] = [:]
        var ans = false
        root?.traversePreOrder { val in
            if let num = map[k - val], num > 0 {
                ans = true
            } else {
                map[val] = 1
            }
        }
        return ans
    }
}

// MARK: - 1. Using HashSet

class Xoo653_1 {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        false
    }
}

// MARK: - 2. Using BFS and HashSet

class Xoo653_2 {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        false
    }
}

// MARK: - 3. Using BST

class Xoo653_3 {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        false
    }
}
