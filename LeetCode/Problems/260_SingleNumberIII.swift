//
//  260_SingleNumberIII.swift
//  LeetCode
//
//  Created by xander on 2021/11/7.
//

import Foundation

class Xoo260 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        []
    }
}

// MARK: - 1. Hashmap

class Xoo260_1 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var map: [Int: Int] = [:]
        for num in nums {
            map[num, default: 0] += 1
        }
        var res: [Int] = []
        for (k, v) in map {
            if v == 1 {
                res.append(k)
            }
        }
        return res
    }
}

// MARK: - 2. Two bitmasks

class Xoo260_2 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        []
    }
}
