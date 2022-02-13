//
//  1094_CarPooling.swift
//  LeetCode
//
//  Created by xander on 2022/1/6.
//

import Foundation

class Xoo1094 {
//    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
//        var checks: [(stop: Int, diff: Int)] = []
//        for trip in trips {
//            checks.append((trip[1], trip[0]))
//            checks.append((trip[2], -trip[0]))
//        }
//
//        // 先下後上
//        checks.sort {
//            if $0.stop == $1.stop { return $0.diff < $1.diff }
//            return $0.stop < $1.stop
//        }
//
//        var total = 0
//        for check in checks {
//            total += check.diff
//            if total > capacity { return false }
//        }
//        return true
//    }
    
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        var counts: [Int] = Array(repeating: 0, count: 1001)
        for trip in trips {
            counts[trip[1]] += trip[0]
            counts[trip[2]] -= trip[0]
        }
        var total = 0
        for count in counts {
            total += count
            if total > capacity { return false }
        }
        return true
    }
}

// MARK: - 1. Time Stamp

class Xoo1094_1 {
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        false
    }
}

// MARK: - 2. Bucket Sort

class Xoo1094_2 {
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        false
    }
}
