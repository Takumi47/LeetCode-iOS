//
//  1690_StoneGameVII.swift
//  LeetCode
//
//  Created by xander on 2021/6/11.
//

import Foundation

// MARK: - 0.

class Xoo1690 {
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        let sum = stones.reduce(0, +)
        var memo: [[Int?]] = Array(repeating: Array(repeating: nil, count: n), count: n)
        
        func game(_ start: Int, _ end: Int, _ currSum: Int) -> Int {
            guard start < end else { return 0 }
            if let s = memo[start][end] { return s }
            
            let scoreRemoveFirst = currSum - stones[start]
            let scoreRemoveLast = currSum - stones[end]
            
            let score =  max(scoreRemoveFirst - game(start + 1, end, scoreRemoveFirst),
                             scoreRemoveLast - game(start, end - 1, scoreRemoveLast))
            memo[start][end] = score
            return score
        }
        
        return game(0, n - 1, sum)
    }
}

// MARK: - 1. Brute Force Using Recursion

/**
 - For Alice, the best choice would be the one that makes her win with maximum score.
 - For Bob, the best choice would be the one that makes him loose with the minimum difference in score with Alice.
        -  Bob's difference is negative.
 */
class Xoo1690_1 {
    private var prefixSum: [Int] = []
    
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        prefixSum = Array(repeating: 0, count: n + 1)
        for i in 0..<n {
            prefixSum[i + 1] = prefixSum[i] + stones[i]
        }
        return abs(findDifference(0, n - 1, true))
    }
    
    private func findDifference(_ start: Int, _ end: Int, _ isAlice: Bool) -> Int {
        if start == end { return 0 }
        var difference = 0
        let scoreRemoveFirst = prefixSum[end + 1] - prefixSum[start + 1]
        let scoreRemoveLast = prefixSum[end] - prefixSum[start]
        
        if isAlice {
            difference = max(findDifference(start + 1, end, false) + scoreRemoveFirst,
                             findDifference(start, end - 1, false) + scoreRemoveLast)
        } else {
            difference = min(findDifference(start + 1, end, true) - scoreRemoveFirst,
                             findDifference(start, end - 1, true) - scoreRemoveLast)
        }

        return difference
    }
}

// MARK: - 2. Top Down Dynamic Programming - Memoization

class Xoo1690_2 {
    private var prefixSum: [Int] = []
    private var memo: [[Int?]] = []
    
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        
        prefixSum = Array(repeating: 0, count: n + 1)
        for i in 0..<n { prefixSum[i + 1] = prefixSum[i] + stones[i] }
        
        memo = Array(repeating: Array(repeating: nil, count: n), count: n)
        
        return maximizeTheRelativeScore(0, n - 1)
    }
    
    private func maximizeTheRelativeScore(_ start: Int, _ end: Int) -> Int {
        if start == end { return 0 }
        if let s = memo[start][end] { return s }
        
        let scoreRemoveFirst = prefixSum[end + 1] - prefixSum[start + 1]
        let scoreRemoveLast = prefixSum[end] - prefixSum[start]
        let score = max(scoreRemoveFirst - maximizeTheRelativeScore(start + 1, end),
                        scoreRemoveLast - maximizeTheRelativeScore(start, end - 1))
        memo[start][end] = score
        return score
    }
}

// MARK: - 3. Optimised Memoization Approach

class Xoo1690_3 {
    private var prefixSum: [Int] = []
    private var memo: [[Int?]] = []
    
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        
        prefixSum = Array(repeating: 0, count: n + 1)
        for i in 0..<n { prefixSum[i + 1] = prefixSum[i] + stones[i] }
        
        memo = Array(repeating: Array(repeating: nil, count: n), count: n)
        
        return maximizeTheRelativeScore(0, n - 1)
    }
    
    private func maximizeTheRelativeScore(_ start: Int, _ end: Int) -> Int {
        if start == end { return 0 }
        if let s = memo[start][end] { return s }
        
        let scoreRemoveFirst = prefixSum[end + 1] - prefixSum[start + 1]
        let scoreRemoveLast = prefixSum[end] - prefixSum[start]
        let score = max(scoreRemoveFirst - maximizeTheRelativeScore(start + 1, end),
                        scoreRemoveLast - maximizeTheRelativeScore(start, end - 1))
        memo[start][end] = score
        return score
    }
}

// MARK: - 4. Bottom Up Dynamic Programming - Tabulation

class Xoo1690_4 {
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        
        var prefixSum: [Int] = Array(repeating: 0, count: n + 1)
        for i in 0..<n { prefixSum[i + 1] = prefixSum[i] + stones[i] }
        
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        for length in 2...n {
            for start in 0...(n - length) {
                let end = start + length - 1
                let scoreRemoveFirst = prefixSum[end + 1] - prefixSum[start + 1]
                let scoreRemoveLast = prefixSum[end] - prefixSum[start]
                dp[start][end] = max(scoreRemoveFirst - dp[start + 1][end],
                                     scoreRemoveLast - dp[start][end - 1])
            }
        }
        
        return dp[0][n - 1]
    }
}

// MARK: - 5. Another Approach Using Tabulation

class Xoo1690_5 {
    func stoneGameVII(_ stones: [Int]) -> Int {
        let n = stones.count
        var prefixSum: [Int] = Array(repeating: 0, count: n + 1)
        for i in 0..<n { prefixSum[i + 1] = prefixSum[i] + stones[i] }
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        
        for start in (0..<n).reversed() {
            for end in (start + 1)..<n {
                let scoreRemoveFirst = prefixSum[end + 1] - prefixSum[start + 1]
                let scoreRemoveLast = prefixSum[end] - prefixSum[start]
                dp[start][end] = max(scoreRemoveFirst - dp[start + 1][end],
                                     scoreRemoveLast - dp[start][end - 1])
            }
        }
        
        return dp[0][n - 1]
    }
}
