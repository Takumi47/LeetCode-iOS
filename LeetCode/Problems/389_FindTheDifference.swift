//
//  389_FindTheDifference.swift
//  LeetCode
//
//  Created by xander on 2022/2/7.
//

import Foundation

class Xoo389 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        "0"
    }
}

// MARK: - 1. Sorting

class Xoo389_1 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        "0"
    }
}

// MARK: - 2. Using HashMap

class Xoo389_2 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var map: [Character: Int] = [:]
        for c in s { map[c, default: 0] += 1 }
        for c in t {
            let n = map[c, default: 0]
            if n == 0 {
                return c
            } else {
                map[c] = n - 1
            }
        }
        return "0"
    }
}

// MARK: - 3. Bit Manipulation

/**
 0 ^ 0 = 0
 0 ^ 1 = 1
 1 ^ 0 = 1
 1 ^ 1 = 0
 */
class Xoo389_3 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
//        var char: UInt8 = 0
//        for c in s { char ^= c.asciiValue! }
//        for c in t { char ^= c.asciiValue! }
//        return Character.init(.init(char))
        
        Character(Unicode.Scalar((s + t).map { $0.asciiValue! }.reduce(0, ^)))
    }
}
