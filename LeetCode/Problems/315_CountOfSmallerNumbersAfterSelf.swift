//
//  315_CountOfSmallerNumbersAfterSelf.swift
//  LeetCode
//
//  Created by xander on 2021/6/26.
//

import Foundation

class Xoo315 {
    func countSmaller(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 1. Segment Tree

class Xoo315_1 {
    func countSmaller(_ nums: [Int]) -> [Int] {
        let offset = 10_000
        let size = 2 * 10_000 + 1 // -10^4 <= nums[i] <= 10^4
        var segmentTree: [Int] = Array(repeating: 0, count: 2 * size)
        var result: [Int] = []
        for num in nums.reversed() {
            let smallerCount = query(0, num + offset, segmentTree, size)
            result.append(smallerCount)
            update(num + offset, &segmentTree, size)
        }
        return result.reversed()
    }
    
    private func update(_ index: Int, _ tree: inout [Int], _ size: Int) {
        var i = index + size
        tree[i] += 1
        while i > 1 {
            i /= 2
            tree[i] = tree[2 * i] + tree[2 * i + 1]
        }
    }
    
    private func query(_ left: Int, _ right: Int, _ tree: [Int], _ size: Int) -> Int {
        var l = left + size
        var r = right + size
        var sum = 0
        while l < r {
            if l % 2 == 1 {
                sum += tree[l]
                l += 1
            }
            l /= 2
            
            if r % 2 == 1 {
                r -= 1
                sum += tree[r]
            }
            r /= 2
        }
        return sum
    }
}

// MARK: - 2. Binary Indexed Tree (Fenwick Tree)

/**
 Prefix sums of frequencies, convert the number to its rank as in sorted array.
 sorted: [1,2,5,6]
 input: [1,6,2,5]
 ranks: [1,4,2,3]
 */
class Xoo315_2 {
    func countSmaller(_ nums: [Int]) -> [Int] {
        let sorted = Set(nums).sorted()
        
        var ranks: [Int: Int] = [:]
        var rank = 1
        for num in sorted {
            ranks[num] = rank
            rank += 1
        }
        
//        var ans: [Int] = Array(repeating: 0, count: nums.count)
//        let tree = FenwickTree<Int>(ranks.count)
//        for (i, num) in nums.reversed().enumerated() {
//            ans[nums.count - i - 1] = tree.query(ranks[num]! - 1)
//            tree.update(ranks[num]!, 1)
//        }
//        return ans
        
        var ans: [Int] = []
        let tree = FenwickTree(ranks.count)
        for num in nums.reversed() {
            ans.append(tree.query(ranks[num]! - 1))
            tree.update(ranks[num]!, 1)
        }
        return ans.reversed()
    }
}

// MARK: - 3. Merge Sort

class Xoo315_3 {
    func countSmaller(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 4. BST

class Xoo315_4 {
    func countSmaller(_ nums: [Int]) -> [Int] {
        []
    }
}
