//
//  276_PaintFence.swift
//  LeetCode
//
//  Created by xander on 2021/8/8.
//

import Foundation

class Xoo276 {
    func numWays(_ n: Int, _ k: Int) -> Int {
        guard n > 1 else { return k }

        var same = k
        var diff = k * (k - 1)
        
        if n > 2 {
            for _ in 3...n {
                let prevSame = same
                let prevDiff = diff
                same = prevDiff
                diff = prevSame * (k - 1) + prevDiff * (k - 1)
            }
        }
        return same + diff
    }
}

// MARK: - 1. Top-Down Dynamic Programming (Recursion + Memoization)

class Xoo276_1 {
    func numWays(_ n: Int, _ k: Int) -> Int {
        0
    }
}

// MARK: - 2. Bottom-Up Dynamic Programming (Tabulation)

class Xoo276_2 {
    func numWays(_ n: Int, _ k: Int) -> Int {
        0
    }
}

// MARK: - 3. Bottom-Up, Constant Space

class Xoo276_3 {
    func numWays(_ n: Int, _ k: Int) -> Int {
        0
    }
}
