//
//  FenwickTree.swift
//  LeetCode
//
//  Created by xander on 2021/6/27.
//

import Foundation

/**
 https://www.youtube.com/watch?v=WbafSgetDDk
 Fenwick Tree / Binary Indexed Tree
 Fenwick tree was proposed to solve the prefix sum problem.
 The idea is to store partial sum in each node and get total sum by traversing the tree from leaf to root.
 Query: O(log n)
 Update: O(log n)
 */
class FenwickTree {
    
    // MARK: - Properties
    
    private let n: Int
    private var sums: [Int]
    
    // MARK: - Lifecycle
    
    init(_ n: Int) {
        self.n = n
        self.sums = Array(repeating: 0, count: n + 1) // index start from 1
    }
    
    // MARK: - Methods
    
    func update(_ index: Int, _ delta: Int) {
        var i = index
        while i <= n {
            sums[i] += delta
            i += lowbit(i)
        }
    }
    
    func query(_ index: Int) -> Int {
        var i = index
        var sum = 0
        while i > 0 {
            sum += sums[i]
            i -= lowbit(i)
        }
        return sum
    }
    
    // MARK: - Private Implementation
    
    /** -x = ~x + 1 */
    private func lowbit(_ x: Int) -> Int { x & -x }
}
