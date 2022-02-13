//
//  290_WordPattern.swift
//  LeetCode
//
//  Created by xander on 2022/1/17.
//

import Foundation

class Xoo290 {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let p = pattern.map(String.init)
        let s = s.components(separatedBy: " ")
        guard p.count == s.count else { return false }
        
        var map1: [String: String] = [:]
        var map2: [String: String] = [:]
        for i in 0..<p.count {
            if let x = map1[p[i]], x != s[i] { return false }
            if let y = map2[s[i]], y != p[i] { return false }
            map1[p[i]] = s[i]
            map2[s[i]] = p[i]
        }
        return true
    }
}

// MARK: - 1. Two Hash Maps

class Xoo290_1 {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        false
    }
}

// MARK: - 2. Single Index Hash Map

class Xoo290_2 {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        false
    }
}
