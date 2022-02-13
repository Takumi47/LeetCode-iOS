//
//  438_FindAllAnagramsInAString.swift
//  LeetCode
//
//  Created by xander on 2022/2/2.
//

import Foundation

class Xoo438 {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let m = s.count
        let n = p.count
        guard m >= n else { return [] }
        var res: [Int] = []
        var arrayS: [Int] = Array(repeating: 0, count: 26)
        var arrayP: [Int] = Array(repeating: 0, count: 26)
        
        for c in p {
            arrayP[index(of: c)] += 1
        }
        
        let s = Array(s)
        for i in 0..<m {
            if i >= n { arrayS[index(of: s[i - n])] -= 1 }
            arrayS[index(of: s[i])] += 1
            if arrayS == arrayP { res.append(i - n + 1) }
        }
        
        return res
    }
    
    private func index(of c: Character) -> Int {
        Int(c.asciiValue! - Character("a").asciiValue!)
    }
}

// MARK: - 1. Sliding Window with HashMap

class Xoo438_1 {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        []
    }
}

// MARK: - 2. Sliding Window with Array

class Xoo438_2 {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        []
    }
}
