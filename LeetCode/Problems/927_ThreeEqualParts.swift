//
//  927_ThreeEqualParts.swift
//  LeetCode
//
//  Created by xander on 2021/7/17.
//

import Foundation

class Xoo927 {
    func threeEqualParts(_ arr: [Int]) -> [Int] {
        let ones = arr.reduce(0, +)
        if ones == 0 { return [0, arr.count - 1] }
        guard ones % 3 == 0 else { return [-1, -1] }
        
        var points: [Int] = []
        var count = 0
        for i in 0..<arr.count {
            guard arr[i] == 1 else { continue }
            count += 1
            if points.isEmpty || count == ones / 3 {
                points.append(i)
                count = 0
            }
        }
        
        var i = points[0]
        var j = points[1]
        var k = points[2]
        
        while k < arr.count {
            if arr[i] == arr[j] && arr[j] == arr[k] {
                i += 1
                j += 1
                k += 1
            } else {
                return [-1, -1]
            }
        }
        return [i - 1, j]
    }
}

// MARK: - 1. Equal Ones

class Xoo927_1 {
    func threeEqualParts(_ arr: [Int]) -> [Int] {
        []
    }
}
