//
//  849_MaximizeDistanceToClosestPerson.swift
//  LeetCode
//
//  Created by xander on 2022/1/16.
//

import Foundation

class Xoo849 {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Next Array

class Xoo849_1 {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        let n = seats.count
        var left: [Int] = Array(repeating: n, count: n)
        var right: [Int] = Array(repeating: n, count: n)
        
        for i in 0..<n {
            if seats[i] == 1 {
                left[i] = 0
            } else if i - 1 >= 0 {
                left[i] = left[i - 1] + 1
            }
        }
        
        for i in (0..<n).reversed() {
            if seats[i] == 1 {
                right[i] = 0
            } else if i + 1 < n {
                right[i] = right[i + 1] + 1
            }
        }
        
        var ans = 0
        for i in 0..<n where seats[i] == 0 {
            ans = max(ans, min(left[i], right[i]))
        }
        return ans
    }
}

// MARK: - 2. Two Pointer

class Xoo849_2 {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Group by Zero

class Xoo849_3 {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        0
    }
}
