//
//  36_ValidSudoku.swift
//  LeetCode
//
//  Created by xander on 2021/8/21.
//

import Foundation

class Xoo36 {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        let m = board.count
        let n = board[0].count
        var rows: [Set<Character>] = Array(repeating: [], count: 9)
        var cols: [Set<Character>] = Array(repeating: [], count: 9)
        var boxes: [Set<Character>] = Array(repeating: [], count: 9)
        
        for i in 0..<m {
            for j in 0..<n {
                let k = i / 3 * 3 + j / 3
                let char = board[i][j]
                guard char != "." else { continue }
                if !rows[i].insert(char).inserted { return false }
                if !cols[j].insert(char).inserted { return false }
                if !boxes[k].insert(char).inserted { return false }
            }
        }
        return true
    }
}

class Xoo36_A {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for row in 0..<9 {
            var map = Array(repeating: 0, count: 128)
            for i in 0..<9 {
                let char = board[row][i]
                if char == "." { continue }
                if map[Int(char.asciiValue!)] > 0 {
                    return false
                } else {
                    map[Int(char.asciiValue!)] += 1
                }
            }
        }
        for col in 0..<9 {
            var map = Array(repeating: 0, count: 128)
            for i in 0..<9 {
                let char = board[i][col]
                if char == "." { continue }
                if map[Int(char.asciiValue!)] > 0 {
                    return false
                } else {
                    map[Int(char.asciiValue!)] += 1
                }
            }
        }
        for box in 0..<9 {
            var map = Array(repeating: 0, count: 128)
            for r in 0..<3 {
                for c in 0..<3 {
                    let char = board[r + 3 * (box / 3)][c + 3 * (box % 3)]
                    if char == "." { continue }
                    if map[Int(char.asciiValue!)] > 0 {
                        return false
                    } else {
                        map[Int(char.asciiValue!)] += 1
                    }
                }
            }
        }
        return true
    }
}

// MARK: - 1. Hash Set

class Xoo36_1 {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        false
    }
}

// MARK: - 2. Array of Fixed Length

class Xoo36_2 {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        false
    }
}

// MARK: - 3. Bitmasking

class Xoo36_3 {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        false
    }
}
