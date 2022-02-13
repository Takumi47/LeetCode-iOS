//
//  1010_PairsOfSongsWithTotalDurationsDivisibleBy60.swift
//  LeetCode
//
//  Created by xander on 2022/1/2.
//

import Foundation

class Xoo1010 {
    func numPairsDivisibleBy60(_ time: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo1010_1 {
    func numPairsDivisibleBy60(_ time: [Int]) -> Int {
        let n = time.count
        var count = 0
        for i in 0..<n {
            for j in (i + 1)..<n {
                if (time[i] + time[j]) % 60 == 0 {
                    count += 1
                }
            }
        }
        return count
    }
}

// MARK: - 2. Use an Array to Store Frequencies

class Xoo1010_2 {
    /**
     1. b%60 = 0, if a%60 = 0
     2. b%60 = 60 - a%60, if a%60 != 0
     */
    func numPairsDivisibleBy60(_ time: [Int]) -> Int {
        var remainders: [Int] = Array(repeating: 0, count: 60)
        var count = 0
        for t in time {
            if t % 60 == 0 {
                count += remainders[0]
            } else {
                count += remainders[60 - t % 60]
            }
            remainders[t % 60] += 1
        }
        return count
    }
}
