//
//  1338_ReduceArraySizeToTheHalf.swift
//  LeetCode
//
//  Created by xander on 2021/7/6.
//

import Foundation

class Xoo1338 {
    func minSetSize(_ arr: [Int]) -> Int {
        var memo: [Int: Int] = [:]
        arr.forEach { num in
            if let freq = memo[num] {
                memo[num] = freq + 1
            } else {
                memo[num] = 1
            }
        }
        
        var minSize = 0
        var currSize = arr.count
        for freq in memo.values.sorted(by: >) {
            guard currSize > arr.count / 2 else { break }
            currSize -= freq
            minSize += 1
        }
        return minSize
    }
}

class Xoo1338_A {
    func minSetSize(_ arr: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        arr.forEach { dict[$0, default: 0] += 1 }
        
        var sortedValues = dict.values.sorted()

        let count = arr.count / 2
        var setSize = 0
        var removed = 0
        while removed < count {
            removed += sortedValues.removeLast()
            setSize += 1
        }
        return setSize
    }
}

// MARK: - 1. Sorting

class Xoo1338_1 {
    func minSetSize(_ arr: [Int]) -> Int {
        let sortedArr = arr.sorted()
        var counts: [Int] = []
        var curr = 1
        for i in 1..<arr.count {
            if sortedArr[i] == sortedArr[i - 1] {
                curr += 1
            } else {
                counts.append(curr)
                curr = 1
            }
        }
        counts.append(curr)
        
        var setSize = 0
        var removed = 0
        for count in counts.sorted(by: >) {
            if removed >= arr.count / 2 { break }
            removed += count
            setSize += 1
        }
        return setSize
    }
}

// MARK: - 2.

class Xoo1338_2 {
    func minSetSize(_ arr: [Int]) -> Int {
        0
    }
}

// MARK: - 3.

class Xoo1338_3 {
    func minSetSize(_ arr: [Int]) -> Int {
        0
    }
}
