//
//  307_RangeSumQuery_Mutable.swift
//  LeetCode
//
//  Created by xander on 2021/6/18.
//

import Foundation

// MARK: - 1. Naive

class NumArray_1 {
    
    private var nums: [Int]
    
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func update(_ index: Int, _ val: Int) {
        nums[index] = val
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        for i in left...right {
            sum += nums[i]
        }
        return sum
    }
}

// MARK: - 2. Sqrt Decomposition

class NumArray_2 {
    
    private var nums: [Int]
    
    private let bSize: Int
    private var blocks: [Int]
    
    init(_ nums: [Int]) {
        self.nums = nums
        
        let bCount = Int(ceil(sqrt(Double(nums.count))))
        self.bSize = bCount
        self.blocks = Array(repeating: 0, count: bCount)
        for i in 0..<nums.count {
            blocks[i / bSize] += nums[i]
        }
    }
    
    func update(_ index: Int, _ val: Int) {
        blocks[index / bSize] += val - nums[index]
        nums[index] = val
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        let startBlock = left / bSize
        let endBlock = right / bSize
        if startBlock == endBlock {
            sum = (left...right).reduce(0) { $0 + nums[$1] }
        } else {
            for i in left...((startBlock + 1) * bSize - 1) {
                sum += nums[i]
            }
            for i in (startBlock + 1)..<endBlock {
                sum += blocks[i]
            }
            for i in (endBlock * bSize)...right {
                sum += nums[i]
            }
        }
        return sum
    }
}

// MARK: - 3. Segment Tree I

class NumArray_3 {
    private let segmentTree: SegmentTree<Int>
    
    init(_ nums: [Int]) {
        self.segmentTree = SegmentTree(nums, +)
    }
    
    func update(_ index: Int, _ val: Int) {
        segmentTree.replaceItem(at: index, with: val)
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        segmentTree.query(left, right)
    }
}

// MARK: - 4. Segment Tree II

class NumArray_4 {
    private let n: Int
    private var tree: [Int] // tree[0]: no use, left: (2*i), right: (2*i+1)
    
    init(_ nums: [Int]) {
        self.n = nums.count
        self.tree = Array(repeating: 0, count: n * 2)
        buildTree(nums)
    }
    
    private func buildTree(_ nums: [Int]) {
        var i = 0
        for j in n..<2 * n {
            tree[j] = nums[i]
            i += 1
        }
        
        for k in (1..<n).reversed() {
            tree[k] = tree[2 * k] + tree[2 * k + 1]
        }
    }
    
    func update(_ index: Int, _ val: Int) {
        var i = index + n
        tree[i] = val
        while i > 0 {
            var left = i
            var right = i
            if i % 2 == 0 {
                right = i + 1
            } else {
                left = i - 1
            }
            tree[i / 2] = tree[left] + tree[right]
            i /= 2
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var l = left + n
        var r = right + n
        var sum = 0
        while l <= r {
            if l % 2 == 1 {
                sum += tree[l]
                l += 1
            }
            l /= 2
            
            if r % 2 == 0 {
                sum += tree[r]
                r -= 1
            }
            r /= 2
        }
        return sum
    }
}

// MARK: - 5. Fenwick Tree

class NumArray_5 {
    private var nums: [Int]
    private let fenwickTree: FenwickTree
    
    init(_ nums: [Int]) {
        self.nums = nums
        self.fenwickTree = FenwickTree(nums.count)
        for i in 0..<nums.count {
            fenwickTree.update(i + 1, nums[i])
        }
    }
    
    func update(_ index: Int, _ val: Int) {
        fenwickTree.update(index + 1, val - nums[index])
        nums[index] = val
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        fenwickTree.query(right + 1) - fenwickTree.query(left)
    }
}
