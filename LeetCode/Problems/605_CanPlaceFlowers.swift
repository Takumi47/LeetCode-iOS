//
//  605_CanPlaceFlowers.swift
//  LeetCode
//
//  Created by xander on 2022/1/18.
//

import Foundation

class Xoo605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        false
    }
}

// MARK: - 1. Single Scan

class Xoo605_1 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        false
    }
}

// MARK: - 2. Optimized

class Xoo605_2 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var f = flowerbed
        var count = 0
        for i in 0..<f.count {
            if f[i] == 0 && (i == 0 || f[i - 1] == 0) && (i == f.count - 1 || f[i + 1] == 0) {
                f[i] = 1
                count += 1
            }
            if count >= n { return true }
        }
        return count >= n
    }
}
