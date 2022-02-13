//
//  782_TransformToChessboard.swift
//  LeetCode
//
//  Created by xander on 2021/9/27.
//

import Foundation

class Xoo782 {
    func movesToChessboard(_ board: [[Int]]) -> Int {
        let n = board.count
        
        var type1 = 1
        var type2 = 0
        for j in 1..<n {
            let same = board[0][j] == board[0][0]
            if same {
                for i in 0..<n {
                    if board[i][j] != board[i][0] { return -1 }
                }
                type1 += 1
            } else {
                for i in 0..<n {
                    if board[i][j] == board[i][0] { return -1 }
                }
                type2 += 1
            }
        }
        if abs(type1 - type2) > 1 { return -1 }
        
        type1 = 1
        type2 = 0
        for i in 1..<n {
            let same = board[i][0] == board[0][0]
            if same {
                for j in 0..<n {
                    if board[i][j] != board[0][j] { return -1 }
                }
                type1 += 1
            } else {
                for j in 0..<n {
                    if board[i][j] == board[0][j] { return -1 }
                }
                type2 += 1
            }
        }
        if abs(type1 - type2) > 1 { return -1 }
        
        var countDiff1 = 0
        for j in 0..<n {
            if board[0][j] != j % 2 {
                countDiff1 += 1
            }
        }
        
        var countDiff2 = 0
        for i in 0..<n {
            if board[i][0] != i % 2 {
                countDiff2 += 1
            }
        }
        
        var res = 0
        if n.isMultiple(of: 2) {
            res += min(countDiff1, n - countDiff1) / 2
            res += min(countDiff2, n - countDiff2) / 2
        } else {
            if !countDiff1.isMultiple(of: 2) { countDiff1 = n - countDiff1 }
            if !countDiff2.isMultiple(of: 2) { countDiff2 = n - countDiff2 }
            res += countDiff1 / 2
            res += countDiff2 / 2
        }
        return res
    }
}

// MARK: - 1. Dimension Independence

class Xoo782_1 {
    func movesToChessboard(_ board: [[Int]]) -> Int {
        0
    }
    
    private func analyzeCount(_ n: Int, _ count: [Int: Int]) -> Int {
        0
    }
}
