//
//  1178_NumberOfValidWordsForEachPuzzle.swift
//  LeetCode
//
//  Created by xander on 2021/11/9.
//

import Foundation

class Xoo1178 {
    func findNumOfValidWords(_ words: [String], _ puzzles: [String]) -> [Int] {
        var ans: [Int] = []
        var freq: [Int: Int] = [:]
        
        for word in words {
            var mask = 0
            for c in word {
                mask |= 1 << offset(c)
            }
            freq[mask, default: 0] += 1
        }
        
        for puzzle in puzzles {
            let n = puzzle.count - 1
            let p = Array(puzzle)
            var total = 0
            
            for i in 0..<(1 << n) {
                var mask = 1 << offset(p[0])
                for j in 0..<n {
                    if i & (1 << j) > 0  {
                        mask |= 1 << offset(p[j + 1])
                    }
                }
                if let count = freq[mask] {
                    total += count
                }
            }
            ans.append(total)
        }
        
        return ans
    }
    
    private func offset(_ char: Character) -> Int {
        Int(char.asciiValue! - Character("a").asciiValue!)
    }
}

class Xoo1178_A {
    func findNumOfValidWords(_ words: [String], _ puzzles: [String]) -> [Int] {
        var ans: [Int] = []
        var freq: [Int: Int] = [:]
        
        for word in words {
            var mask = 0
            for c in word {
                mask |= 1 << offset(c)
            }
            freq[mask, default: 0] += 1
        }
        
        for puzzle in puzzles {
            let p = Array(puzzle)
            var mask = 0
            for c in p {
                mask |= 1 << offset(c)
            }
            
            let first = offset(p[0])
            var curr = mask
            var total = 0
            while curr != 0 {
                if (curr >> first) & 1 > 0 {
                    if let count = freq[curr] {
                        total += count
                    }
                }
                curr = (curr - 1) & mask
            }
            ans.append(total)
        }
        
        return ans
    }
    
    private func offset(_ char: Character) -> Int {
        Int(char.asciiValue! - Character("a").asciiValue!)
    }
}

// MARK: - 1. Hashing (Bitmask)

class Xoo1178_1 {
    func findNumOfValidWords(_ words: [String], _ puzzles: [String]) -> [Int] {
        []
    }
}

// MARK: - 2. Trie

class Xoo1178_2 {
    func findNumOfValidWords(_ words: [String], _ puzzles: [String]) -> [Int] {
        []
    }
}
