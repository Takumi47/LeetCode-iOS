//
//  997_FindTheTownJudge.swift
//  LeetCode
//
//  Created by xander on 2022/1/3.
//

import Foundation

/**
 The Judge should have degree of N-1
 */

class Xoo997 {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var degrees: [Int] = Array(repeating: 0, count: n + 1)
        for t in trust {
            degrees[t[0]] -= 1
            degrees[t[1]] += 1
        }
        for i in 1...n {
            if degrees[i] == n - 1 {
                return i
            }
        }
        return -1
    }
}

// MARK: - 1. Two Arrays

class Xoo997_1 {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. One Array

class Xoo997_2 {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        0
    }
}
