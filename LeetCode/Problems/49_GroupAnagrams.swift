//
//  49_GroupAnagrams.swift
//  LeetCode
//
//  Created by xander on 2021/8/12.
//

import Foundation

class Xoo49 {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 1 else { return [strs] }
        var res: [[String]] = []
        var map: [String: [String]] = [:]
        for str in strs {
            let chars = Array(str).sorted()
            let key = chars.map { "\($0)" }.joined()
            map[key, default: []].append(str)
        }
        for value in map.values {
            res.append(value)
        }
        return res
    }
}

// MARK: - 1. Categorize by Sorted String

class Xoo49_1 {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        []
    }
}

// MARK: - 2. Categorize by Count

class Xoo49_2 {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        []
    }
}
